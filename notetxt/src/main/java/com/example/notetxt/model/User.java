package com.example.notetxt.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
    private String id;
    private String password;
    private String name;
    private String nickname;
    private String phone;
    private String email;
    private String address;
    private String admin_ck;

}