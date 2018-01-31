/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355.dao;

/**
 *
 * @author Igor Ivacic
 */
public interface MobileDao {
    
    public void addMobile();
    public String addMobileRet();
    public void addMobileThrowException() throws Exception;
    public void addMobileAround(String name);
    
}
