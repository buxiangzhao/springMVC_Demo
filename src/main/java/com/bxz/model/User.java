package com.bxz.model;

import java.io.Serializable;

public class User implements Serializable {
    private Long t_id;
    private String t_name;
    private String t_pwd;

    public User(){

    }
    public User(Long t_id, String name, String password){
        this.t_id = t_id;
        this.t_name = name;
        this.t_pwd = password;
    }
    public Long getT_id() {
        return t_id;
    }

    public void setT_id(Long t_id) {
        this.t_id = t_id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_pwd() {
        return t_pwd;
    }

    public void setT_pwd(String t_pwd) {
        this.t_pwd = t_pwd;
    }
}
