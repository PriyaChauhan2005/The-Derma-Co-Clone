// Source code is decompiled from a .class file using FernFlower decompiler.
package model;

public class User {
   private int id;
   private String name;
   private String email;
   private String password;

   public User() {
   }

   public User(int var1, String var2, String var3, String var4) {
      this.id = var1;
      this.name = var2;
      this.email = var3;
      this.password = var4;
   }

   public int getId() {
      return this.id;
   }

   public void setId(int var1) {
      this.id = var1;
   }

   public String getName() {
      return this.name;
   }

   public void setName(String var1) {
      this.name = var1;
   }

   public String getEmail() {
      return this.email;
   }

   public void setEmail(String var1) {
      this.email = var1;
   }

   public String getPassword() {
      return this.password;
   }

   public void setPassword(String var1) {
      this.password = var1;
   }

   public String toString() {
      return "User [id=" + this.id + ", name=" + this.name + ", email=" + this.email + ", password=" + this.password + "]";
   }
}
