package com.tap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.hibernate.Session;
import org.hibernate.Transaction;

@Controller
public class StudentController {

    @RequestMapping("/submit")
    public String saveStudent(@RequestParam String name,
                              @RequestParam String email,
                              @RequestParam int age,
                              @RequestParam String address,
                              Model model) {

     
        Student s = new Student(name, email, age, address);

       
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(s);
        tx.commit();
        session.close();

       
        model.addAttribute("id", s.getId());  // auto-generated
        model.addAttribute("name", name);
        model.addAttribute("email", email);
        model.addAttribute("age", age);
        model.addAttribute("address", address);

        return "success.jsp"; 
    }
}
