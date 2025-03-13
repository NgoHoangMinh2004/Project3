package com.springmvc.controllers;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.springmvc.beans.NHM_DonHang;
import com.springmvc.beans.NHM_GiaCaThiTruong;
import com.springmvc.dao.NHM_GiaCaThiTruongDao;

@Controller
@RequestMapping("/sanpham/giacathitruong")
public class NHM_GiaCaThiTruongController {

    private NHM_GiaCaThiTruongDao giacathitruongdao;

    @Autowired  
    public NHM_GiaCaThiTruongController(NHM_GiaCaThiTruongDao giacathitruongdao) {
        this.giacathitruongdao = giacathitruongdao;
    }
    @GetMapping("/GCTT")
    public String viewGCTT(Model model) {
        List<NHM_GiaCaThiTruong> listGCTT = giacathitruongdao.getGiaCaThiTruong();
        model.addAttribute("listGCTT", listGCTT);
        return "giacathitruong/GCTT";  
    }
    // Hiển thị danh sách giá cả thị trường cho tất cả sản phẩm
    @GetMapping("/viewgctt")
    public String viewGiaCaThiTruong(Model model) {
        List<NHM_GiaCaThiTruong> listGCTT = giacathitruongdao.getGiaCaThiTruong();
        model.addAttribute("listGCTT", listGCTT);
        return "giacathitruong/viewgctt";  
    }

    // Hiển thị form thêm giá sản phẩm mới
    @GetMapping("/addgctt")
    public String showFormAddGiaCa(Model model) {
        model.addAttribute("gctt", new NHM_GiaCaThiTruong());  // Tạo đối tượng mới để thêm
        return "giacathitruong/addgctt";  // Trả về form thêm giá sản phẩm
    }

    // Lưu giá sản phẩm mới
    @PostMapping("/addgctt")
    public String addGiaCaThiTruong(@ModelAttribute("gctt") NHM_GiaCaThiTruong gctt) {
        giacathitruongdao.addGiaCaThiTruong(gctt);  // Thêm giá sản phẩm vào cơ sở dữ liệu
        return "redirect:/sanpham/giacathitruong/GCTT";  // Chuyển hướng về danh sách giá
    }


 // Hiển thị form chỉnh sửa giá sản phẩm
    @GetMapping("/editgctt/{gcttId}")
    public String editGiaCaThiTruong(@PathVariable("gcttId") int gcttId, Model model) {
        // Lấy thông tin giá sản phẩm theo id
        NHM_GiaCaThiTruong gctt = giacathitruongdao.getGiaCaById(gcttId);

        // Kiểm tra nếu không tìm thấy sản phẩm
        if (gctt == null) {
            return "error/404"; // Chuyển hướng đến trang lỗi nếu không tìm thấy sản phẩm
        }

        // Thêm đối tượng vào model để hiển thị trong form
        model.addAttribute("gctt", gctt);

        // Trả về view chỉnh sửa giá sản phẩm
        return "giacathitruong/editgctt"; 
    }

    // Lưu các thay đổi chỉnh sửa giá sản phẩm
    @PostMapping("/editgctt/{gcttId}")
    public String updateGiaCaThiTruong(@PathVariable("gcttId") int gcttId, @ModelAttribute NHM_GiaCaThiTruong gctt) {
        // Kiểm tra nếu đối tượng gctt là null
        if (gctt == null) {
            return "error/404"; // Trả về lỗi nếu không có dữ liệu
        }

        // Gắn lại ID vào đối tượng nếu chưa có
        if (gctt.getNhm_gctt_id() == 0) {
            gctt.setNhm_gctt_id(gcttId);  // Gắn ID từ URL vào đối tượng
        }

        // Cập nhật thông tin giá sản phẩm
        giacathitruongdao.updateGiaCaThiTruong(gctt);

        // Sau khi lưu, chuyển hướng đến trang xem danh sách sản phẩm
        return "redirect:/sanpham/giacathitruong/GCTT"; 
    }

    // Xóa giá sản phẩm
    @GetMapping("/deletegctt/{sanPhamId}")
    public String deleteGiaCaThiTruong(@PathVariable("sanPhamId") int sanPhamId) {
        giacathitruongdao.deleteGiaCaThiTruong(sanPhamId);  // Xóa giá sản phẩm theo id
        return "redirect:/sanpham/giacathitruong/viewgctt";  // Chuyển hướng về danh sách giá sản phẩm
    }
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(java.sql.Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                try {
                    java.util.Date parsedDate = dateFormat.parse(text);
                    setValue(new java.sql.Date(parsedDate.getTime()));
                } catch (ParseException e) {
                    throw new IllegalArgumentException("Invalid date format. Please use yyyy-MM-dd'T'HH:mm", e);
                }
            }
            
            @Override
            public String getAsText() {
                java.sql.Date value = (java.sql.Date) getValue();
                return (value != null ? dateFormat.format(value) : "");
            }
        });
    }

}
