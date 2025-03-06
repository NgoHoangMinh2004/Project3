package com.springmvc.controllers;

import com.springmvc.beans.NHM_DonHang;
import com.springmvc.dao.NHM_DonHangDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class NHM_DonHangController {

    @Autowired
    private NHM_DonHangDao donhangdao;

    // Hiển thị danh sách đơn hàng
    @GetMapping("/donhang/viewdh")
    public String viewDonHang(Model model) {
        List<NHM_DonHang> listDH = donhangdao.getAllDonHang();
        model.addAttribute("listDH", listDH);
        return "sanpham/donhang/viewdh";  // Trả về view JSP
    }
}
