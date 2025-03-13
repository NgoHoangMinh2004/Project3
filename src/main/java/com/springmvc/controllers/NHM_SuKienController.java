package com.springmvc.controllers;

import com.springmvc.beans.NHM_SuKien;
import com.springmvc.beans.NHM_SuKienDangKy;
import com.springmvc.beans.NHM_TaiKhoan;
import com.springmvc.dao.NHM_SuKienDao;
import com.springmvc.dao.NHM_SuKienDangKyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("sanpham/sukien")
public class NHM_SuKienController {

    private NHM_SuKienDao suKienDao;
    private NHM_SuKienDangKyDao suKienDangKyDao;
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                try {
                    setValue(dateFormat.parse(text));
                } catch (ParseException e) {
                    setValue(null);
                }
            }
        });
    }

    @Autowired
    public NHM_SuKienController(NHM_SuKienDao suKienDao, NHM_SuKienDangKyDao suKienDangKyDao) {
        this.suKienDao = suKienDao;
        this.suKienDangKyDao = suKienDangKyDao;
    }
    

    // Hiển thị danh sách sự kiện
    @GetMapping("/viewsk")
    public String viewAllSuKien(Model model) {
        List<NHM_SuKien> dsSuKien = suKienDao.getAllSuKien();
        model.addAttribute("dsSuKien", dsSuKien);
        return "sukien/viewsk"; // -> /WEB-INF/sukien/view.jsp (tuỳ ViewResolver)
    }
    @GetMapping("/viewskUser")
    public String viewAllSuKienUser(Model model) {
        List<NHM_SuKien> dsSuKien = suKienDao.getAllSuKien();
        model.addAttribute("dsSuKien", dsSuKien);
        return "sukien/viewskUser";
    
    }
    // Hiển thị form thêm
    @GetMapping("/addsk")
    public String showAddForm(Model model) {
        model.addAttribute("sukien", new NHM_SuKien());
        return "sukien/addsk"; 
    }

    // Lưu sự kiện mới
    @PostMapping("/addsk")
    public String addSuKien(@ModelAttribute("sukien") NHM_SuKien suKien) {
        suKienDao.addSuKien(suKien);
        return "redirect:/sanpham/sukien/viewsk";
    }

    // Hiển thị form sửa
    @GetMapping("/editsk/{skId}")
    public String showEditForm(@PathVariable("skId") int skId, Model model) {
        NHM_SuKien sk = suKienDao.getSuKienById(skId);
        if (sk == null) {
            return "error/404";
        }
        model.addAttribute("sukien", sk);
        return "sukien/editsk";
    }

    // Lưu cập nhật
    @PostMapping("/editsk/{skId}")
    public String updateSuKien(@PathVariable("skId") int skId,
                               @ModelAttribute("sukien") NHM_SuKien suKien) {
        suKien.setNhm_sk_id(skId);
        suKienDao.updateSuKien(suKien);
        return "redirect:/sanpham/sukien/viewsk";
    }

    // Xoá sự kiện
    @GetMapping("/delete/{skId}")
    public String deleteSuKien(@PathVariable("skId") int skId) {
        suKienDao.deleteSuKien(skId);
        return "redirect:/sanpham/sukien/viewsk";
    }

    @GetMapping("/dangky/{skId}")
    public String dangKySuKien(@PathVariable("skId") int skId, 
                               HttpSession session, 
                               org.springframework.web.servlet.mvc.support.RedirectAttributes ra) {
        // Lấy user từ session
        NHM_TaiKhoan tk = (NHM_TaiKhoan) session.getAttribute("user");
        if (tk == null) {
            return "redirect:/sanpham/taikhoan/dang-nhap";
        }

        int currentUserId = tk.getNhm_tk_id();
        String currentUserName = tk.getNhm_ten_tk();

    
        boolean daDangKy = suKienDangKyDao.checkDangKyTonTai(skId, currentUserId);
        if (daDangKy) {
      
            ra.addFlashAttribute("errorMessage", "Mỗi người chỉ được đăng ký 1 lần!");
            return "redirect:/sanpham/sukien/viewskUser";
        }

      
        NHM_SuKienDangKy dk = new NHM_SuKienDangKy();
        dk.setNhm_sk_id(skId);
        dk.setNhm_tk_id(currentUserId);
        dk.setNhm_ten_tk(currentUserName);
        dk.setNhm_ngay_dk(new Date());

        suKienDangKyDao.addDangKy(dk);

        ra.addFlashAttribute("successMessage", "Bạn đã đăng ký thành công!");
        return "redirect:/sanpham/sukien/viewskUser";
    }



    // (Tuỳ chọn) Hiển thị danh sách người đã đăng ký cho 1 sự kiện
    @GetMapping("/dsdangky/{skId}")
    public String dsDangKySuKien(@PathVariable("skId") int skId, Model model) {
        List<NHM_SuKienDangKy> dsDangKy = suKienDangKyDao.getDangKyBySuKien(skId);
        model.addAttribute("dsDangKy", dsDangKy);
        return "sukien/dsdangky";
    }
 // Xoá đăng ký của một sự kiện
    @GetMapping("/deleteDangKy/{skId}/{skdkId}")
    public String deleteDangKy(@PathVariable("skId") int skId,
                               @PathVariable("skdkId") int skdkId) {
        suKienDangKyDao.deleteDangKy(skdkId);
        return "redirect:/sanpham/sukien/dsdangky/" + skId;
    }

}

