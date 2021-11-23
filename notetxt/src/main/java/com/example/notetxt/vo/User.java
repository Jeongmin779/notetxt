package com.example.notetxt.vo;

public class User {

    private String id;
    private String password;
    private String name;
    private String nickname;
    private String phone;
    private String email;
    private String address;
    private String admin_ck;

    public User() {
        // TODO Auto-generated constructor stub
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAdmin_ck() {
        return admin_ck;
    }

    public void setAdmin_ck(String admin_ck) {
        this.admin_ck = admin_ck;
    }

}