package com.springmvc.controllers;

import com.springmvc.beans.NHM_ChiTietDonHang;
import com.springmvc.dao.NHM_ChiTietDonHangDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class NHM_ChiTietDonHangController {

    @Autowired
    private NHM_ChiTietDonHangDao chitietdonhangdao;

    // Hiển thị chi tiết đơn hàng
    @GetMapping("/chitietdonhang/viewctdh")
    public String viewChiTietDonHang(int dhId, Model model) {
        List<NHM_ChiTietDonHang> listCTDH = chitietdonhangdao.getChiTietDonHangByDHId(dhId);
        model.addAttribute("listCTDH", listCTDH);
        return "sanpham/donhang/viewctdh";  // Trả về view JSP
    }
}
