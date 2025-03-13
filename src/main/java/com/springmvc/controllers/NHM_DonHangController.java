package com.springmvc.controllers;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.springmvc.beans.NHM_DonHang;
import com.springmvc.dao.NHM_DonHangDao;

@Controller
@RequestMapping("/sanpham")
public class NHM_DonHangController {

    @Autowired  
    private NHM_DonHangDao donhangdao;  // Sử dụng dao của NHM_DonHang

    // Hiển thị form thêm đơn hàng
    @GetMapping("/donhang/add") 
    public String showForm(Model model) {
        model.addAttribute("donHang", new NHM_DonHang());  // Tạo đối tượng NHM_DonHang mới
        return "donhang/addDh";  // Trả về view thêm đơn hàng
    }
    @PostMapping("/donhang/add")
    public String addDonHang(@ModelAttribute("donHang") NHM_DonHang donHang) {
        // Kiểm tra nếu ngày đặt hàng chưa được thiết lập, gán ngày hiện tại
        if (donHang.getNhm_ngay_dat_hang() == null) {
            donHang.setNhm_ngay_dat_hang(new Date());  // Gán ngày hiện tại làm mặc định
        }
        
        donhangdao.addDonHang(donHang);  // Lưu đơn hàng vào cơ sở dữ liệu
        return "redirect:/sanpham/donhang/viewdh";  // Chuyển hướng về trang danh sách đơn hàng
    }

    // Lưu đơn hàng mới
    @PostMapping("/donhang/view")
    public String save(@ModelAttribute("donHang") NHM_DonHang donHang) {
    	donhangdao.addDonHang(donHang);  // Lưu đơn hàng vào cơ sở dữ liệu
        return "redirect:/sanpham/donhang/viewdh";  // Chuyển hướng đến trang xem danh sách đơn hàng
    }

    // Xem tất cả đơn hàng
    @GetMapping("/donhang/viewdh") 
    public String viewDonHang(Model model) {
        List<NHM_DonHang> listDonHang = donhangdao.getAllDonHang();  // Lấy danh sách tất cả đơn hàng
        model.addAttribute("listDonHang", listDonHang);  // Đưa danh sách đơn hàng vào model
        return "/donhang/viewdh";  // Trả về view hiển thị danh sách đơn hàng
    }

    // Hiển thị form chỉnh sửa đơn hàng
    @GetMapping("/donhang/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        NHM_DonHang donHang = donhangdao.getDonHangById(id);  // Lấy đơn hàng theo id
        if (donHang == null) {
            return "redirect:/sanpham/donhang/viewdh";  // Nếu không tìm thấy đơn hàng thì quay lại danh sách
        }
        model.addAttribute("donHang", donHang);  // Đưa đối tượng đơn hàng vào model
        return "/donhang/editDH";  // Trả về view chỉnh sửa đơn hàng
    }

    // Lưu các thay đổi chỉnh sửa đơn hàng
    @PostMapping("/donhang/edit")
    public String editSave(@ModelAttribute("donHang") NHM_DonHang donHang) {
        donhangdao.updateDonHang(donHang);  // Cập nhật đơn hàng vào cơ sở dữ liệu
        return "redirect:/sanpham/donhang/viewdh";  // Chuyển hướng đến trang xem danh sách đơn hàng
    }

 // Xóa đơn hàng
    @PostMapping("/donhang/delete/{id}")
    public String delete(@PathVariable int id) {
        donhangdao.deleteDonHang(id);  // Xóa đơn hàng theo id
        return "redirect:/sanpham/donhang/viewdh";  // Quay lại trang xem danh sách đơn hàng
    }
    // Xem danh sách đơn hàng cho người dùng
    @GetMapping("/donhang/user")
    public String viewDonHangUser(Model model) {
        List<NHM_DonHang> listDonHang = donhangdao.getAllDonHang();  // Lấy danh sách đơn hàng
        model.addAttribute("listDonHang", listDonHang);  // Đưa danh sách đơn hàng vào model
        return "donhangUser";  // Trả về view cho người dùng
    }
}
