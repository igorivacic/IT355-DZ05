/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355.dao.impl;

import com.metropolitan.it355.dao.MobileDao;

/**
 *
 * @author Igor Ivacic
 */
public class MobileDaoImpl implements MobileDao {

    @Override
    public void addMobile() {
        System.out.println("Adding mobile device . . .");
    }

    @Override
    public String addMobileRet() {

        System.out.println("Adding mobile device and returning value...");
        return "Added succesfully!";
    }

    @Override
    public void addMobileThrowException() throws Exception {
        System.out.println("Adding mobile device and throwing exception...");
                throw new Exception("Generic Exception");

    }

    @Override
    public void addMobileAround(String name) {
        System.out.println("Adding mobile device with name: " + name);
        
    }

}
