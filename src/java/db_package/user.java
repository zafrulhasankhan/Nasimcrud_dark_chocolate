/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db_package;

/**
 *
 * @author Zafrul Hasan Nasim
 */
public class user {
    private String name;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    private String image;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    private String mobile;

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "user{" + "name=" + name + ", image=" + image + ", mobile=" + mobile + ", email=" + email + '}';
    }

   

   

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    private String email;
    
}
