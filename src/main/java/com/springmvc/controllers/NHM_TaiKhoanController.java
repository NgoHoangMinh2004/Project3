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
@RequestMapping("/taikhoan")
public class NHM_TaiKhoanController {

    @Autowired
    private NHM_TaiKhoanDao TaiKhoandao;

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
        NHM_TaiKhoan tk = TaiKhoandao.checkLogin(email, matkhau);

        if (tk == null) {
            model.addAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
            return "taikhoan/DangNhap";
        }

       
        session.setAttribute("user", tk);
        session.setAttribute("nhm_ten_tk", tk.getNhm_ten_tk()); 

     
        if ("Admin".equals(tk.getNhm_loai_tk())) {
            return "taikhoan/TrangchuAdmin"; 
        } else {
            return "redirect:/taikhoan/trangchu-user";
        }
    }
    @GetMapping("/sanpham-user")
    public String showSanPhamUser(HttpSession session, Model model) {
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk == null) {
            return "redirect:/taikhoan/dang-nhap";
        }
        model.addAttribute("user", tk);
        return "sanphamUser"; 
    }


    @GetMapping("/trangchu-user")
    public String showUserHome(HttpSession session, Model model) {
        // Kiểm tra xem user có đăng nhập chưa
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk == null) {
            return "redirect:/taikhoan/dang-nhap";
        }
        model.addAttribute("user", tk);
        return "taikhoan/TrangchuUser";
    }


    @GetMapping("/view")
    public String listTaiKhoan(Model model) {
        List<NHM_TaiKhoan> danhSach = TaiKhoandao.getAllTaiKhoan();
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
            TaiKhoandao.save(tk);
        } else {
            TaiKhoandao.update(tk);
        }
        return "redirect:/taikhoan/dang-nhap";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        NHM_TaiKhoan tk = TaiKhoandao.getTaiKhoanById(id);
        model.addAttribute("command", tk);
        return "taikhoan/formTK";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        TaiKhoandao.delete(id);
        return "redirect:/taikhoan/view";
    }
}
