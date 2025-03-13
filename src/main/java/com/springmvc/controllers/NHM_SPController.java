package com.springmvc.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.springmvc.beans.NHM_SP;
import com.springmvc.dao.NHM_SPDao;

@Controller
@RequestMapping("/sanpham")
public class NHM_SPController {

    @Autowired  
    private NHM_SPDao dao; 

    @GetMapping("/form") 
    public String showForm(Model model) {
        model.addAttribute("command", new NHM_SP());
        return "saveview";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("command") NHM_SP sanPham) {
        dao.save(sanPham);
        return "redirect:/sanpham/view";
    }

    @GetMapping("/view") 
    public String viewSanPham(Model model) {
        List<NHM_SP> listSP = dao.getAllSP();
        model.addAttribute("listSP", listSP);
        return "view";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        NHM_SP sanPham = dao.getSPById(id);
        if (sanPham == null) {
            return "redirect:/sanpham/view"; 
        }
        model.addAttribute("command", sanPham);
        return "editview";
    }

    @PostMapping("/editsave")
    public String editSave(@ModelAttribute("sanPham") NHM_SP sanPham) {
        dao.update(sanPham);
        return "redirect:/sanpham/view";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/sanpham/view";
    }

    @GetMapping("/user")
    public String viewSanPhamUser(Model model) {
        List<NHM_SP> listSP = dao.getAllSP();
        model.addAttribute("listSP", listSP);
        return "sanphamUser"; // Đã sửa
    }
}
