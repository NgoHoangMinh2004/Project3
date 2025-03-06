package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springmvc.beans.NHM_SP;
import com.springmvc.dao.NHM_SPDao;

@Controller
public class NHM_SPController {

    @Autowired  
    private NHM_SPDao dao; 

    // Hiển thị form thêm sản phẩm mới
    @GetMapping("/sanpham/form")
    public String showForm(Model model) {
        model.addAttribute("command", new NHM_SP());
        return "saveview";
    }

    // Lưu sản phẩm mới vào database
    @PostMapping("/sanpham/save")
    public String save(@ModelAttribute("command") NHM_SP sanPham) {
        dao.save(sanPham);
        return "redirect:/sanpham/view";
    }

    // Hiển thị danh sách sản phẩm
    @GetMapping("/sanpham/view")
    public String viewSanPham(Model model) {
        List<NHM_SP> listSP = dao.getAllSP();
        model.addAttribute("listSP", listSP);
        return "view";
    }
 // Hiển thị danh sách sản phẩm dành cho khách hàng
    @GetMapping("/sanpham/user")
    public String viewSanPhamUser(Model model) {
        List<NHM_SP> listSP = dao.getAllSP();
        model.addAttribute("danhSachSanPham", listSP);
        return "sanphamUser";
    }

    // Hiển thị form chỉnh sửa thông tin sản phẩm
    @GetMapping("/sanpham/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        NHM_SP sanPham = dao.getSPById(id);
        if (sanPham == null) {
            return "redirect:/sanpham/view"; // Nếu không tìm thấy sản phẩm, quay lại danh sách
        }
        model.addAttribute("command", sanPham);
        return "editview";
    }

    // Lưu chỉnh sửa thông tin sản phẩm
    @PostMapping("/sanpham/editsave")
    public String editSave(@ModelAttribute("sanPham") NHM_SP sanPham) {
        dao.update(sanPham);
        return "redirect:/sanpham/view";
    }

    // Xóa sản phẩm theo ID
    @GetMapping("/sanpham/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/sanpham/view";
    }
}
