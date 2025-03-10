package servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

@WebServlet(name = "AddToCartServlet", urlPatterns = "/add-to-cart")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Get product ID
        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp"); // Invalid ID, redirect
            return;
        }

        HttpSession session = request.getSession();
        ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");

        if (cartList == null) {
            // No cart exists, create a new one
            cartList = new ArrayList<>();
            session.setAttribute("cart-list", cartList);
        }

        // Check if product already exists in cart
        boolean exists = false;
        for (Cart c : cartList) {
            if (c.getId() == id) {
                exists = true;
                break; // Exit loop early
            }
        }

        if (!exists) {
            // Add new product to cart
            Cart cm = new Cart();
            cm.setId(id);
            cm.setQuantity(1);
            cartList.add(cm);
        }

        session.setAttribute("cart-list", cartList); // Update session
        response.sendRedirect("index.jsp"); // Redirect back
    }
}
