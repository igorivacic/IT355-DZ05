/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355.model;

/**
 *
 * @author Igor Ivacic
 */
public class Mobile {
    private String name;
    private String model;
    private int price;
    private String maker;

    public Mobile() {
    }

    public Mobile(String name, String model, int price, String maker) {
        this.name = name;
        this.model = model;
        this.price = price;
        this.maker = maker;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    @Override
    public String toString() {
        return "Mobile{" + "name=" + name + ", model=" + model + ", price=" + price + ", maker=" + maker + '}';
    }
    
    
    
}
