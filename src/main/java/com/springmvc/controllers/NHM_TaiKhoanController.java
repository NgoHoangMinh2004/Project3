package com.springmvc.controllers;

import com.springmvc.beans.NHM_TaiKhoan;
import com.springmvc.dao.NHM_TaiKhoanDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("sanpham/taikhoan")
public class NHM_TaiKhoanController {

    @Autowired
    private NHM_TaiKhoanDao taiKhoanDao;
    
    @GetMapping("/TrangchuUser")
    public String hienThiTrangChuUser() {
        return "taikhoan/TrangchuUser"; 
    }
    @GetMapping("/TrangchuAdmin")
    public String hienthitranchuAdmin() {
        return "taikhoan/TrangchuAdmin"; 
    }

    @GetMapping("/dang-nhap")
    public String showLoginPage() {
        return "taikhoan/DangNhap";
    }

    @GetMapping("/dang-ky")
    public String showRegisterPage(Model model) {
        model.addAttribute("command", new NHM_TaiKhoan());
        return "taikhoan/DangkiTKUser";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("matkhau") String matkhau,
                        Model model,
                        HttpSession session) {
        NHM_TaiKhoan tk = taiKhoanDao.checkLogin(email, matkhau);

        if (tk == null) {
            model.addAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
            return "taikhoan/DangNhap";
        }

        session.setAttribute("user", tk);
        session.setAttribute("nhm_ten_tk", tk.getNhm_ten_tk());
        session.setAttribute("nhm_tk_id", tk.getNhm_tk_id());

        if ("Admin".equals(tk.getNhm_loai_tk())) {
            return "taikhoan/TrangchuAdmin";
        } else {
            return "redirect:/sanpham/taikhoan/trangchu-user";
        }
    }

    @GetMapping("/sanpham-user")
    public String showSanPhamUser(HttpSession session, Model model) {
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk == null) {
            return "redirect:/sanpham/taikhoan/dang-nhap";
        }
        model.addAttribute("user", tk);
        return "sanphamUser";
    }

    @GetMapping("/trangchu-user")
    public String showUserHome(HttpSession session, Model model) {
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk == null) {
            return "redirect:/sanpham/taikhoan/";
        }
        model.addAttribute("user", tk);
        return "taikhoan/TrangchuUser";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        System.out.println("Logout function called!");
        session.invalidate();
        return "redirect:/sanpham/taikhoan/dang-nhap";
    }

    @GetMapping("/view")
    public String listTaiKhoan(Model model) {
        List<NHM_TaiKhoan> danhSach = taiKhoanDao.getAllTaiKhoan();
        model.addAttribute("danhSachTaiKhoan", danhSach);
        return "taikhoan/viewTK";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("command", new NHM_TaiKhoan());
        return "taikhoan/formTK";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("command") NHM_TaiKhoan tk) {
        if (tk.getNhm_tk_id() == 0) {
            taiKhoanDao.save(tk);
        } else {
            taiKhoanDao.update(tk);
        }
        return "redirect:/sanpham/taikhoan/dang-nhap";
    }

   

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id, HttpSession session) {
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk != null && tk.getNhm_tk_id() == id) {
            session.invalidate();
        }
        taiKhoanDao.delete(id);
        return "redirect:/sanpham/taikhoan/view";
    }
}

