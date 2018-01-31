/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355.controller;

import com.metropolitan.it355.dao.MobileDao;
import com.metropolitan.it355.model.Mobile;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Igor Ivacic
 */
@Controller

public class MobileController {
// GET method

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private MobileDao mobileDao;

    @RequestMapping(value = "/mobile", method = RequestMethod.GET)
    public ModelAndView mobile() {
        System.out.println("Calling MessageSource");
        System.out.println(messageSource.getMessage("name", null, new Locale("sr-Latn-RS")));
        System.out.println("Calling mobileDao");
        mobileDao.addMobile();
        mobileDao.addMobileAround("Illegal argument");
        try {
            mobileDao.addMobileThrowException();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ModelAndView("mobile", "command", new Mobile());
    }
// POST method

    @RequestMapping(value = "/addMobile", method = RequestMethod.POST)
    public String addMobile(@ModelAttribute Mobile mobile, ModelMap model) {
        model.addAttribute("maker", mobile.getMaker());
        model.addAttribute("model", mobile.getModel());
        model.addAttribute("price", mobile.getPrice());
        model.addAttribute("name", mobile.getName());
       

// viewMobile.jsp
        return "viewMobile";
    }
}
