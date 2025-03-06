package com.springmvc.controllers;

import com.springmvc.beans.NHM_LichSuTrangThai;
import com.springmvc.dao.NHM_LichSuTrangThaiDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/lichsutrangthai")
public class NHM_LichSuTrangThaiController {

    @Autowired
    private NHM_LichSuTrangThaiDao lichsutrangthaidao;

    // Hiển thị tất cả lịch sử trạng thái của đơn hàng
    @GetMapping("/viewLSTT")
    public String viewLichSuTrangThai(@RequestParam("dhId") int dhId, Model model) {
        List<NHM_LichSuTrangThai> listLSTT = lichsutrangthaidao.getLichSuTrangThaiByDHId(dhId);
        model.addAttribute("listLSTT", listLSTT);
        return "sanpham/donhang/viewLSTT";  // Trả về view JSP
    }

    // Thêm mới lịch sử trạng thái cho đơn hàng
    @PostMapping("/addLSTT")
    public String addLichSuTrangThai(NHM_LichSuTrangThai lichSu) {
    	lichsutrangthaidao.addLichSuTrangThai(lichSu);
        return "redirect:/lichsutrangthai/viewLSTT?dhId=" + lichSu.getNhm_dh_id(); // Quay lại trang xem lịch sử
    }

    // Cập nhật trạng thái cho lịch sử
    @PostMapping("/updateLSTT")
    public String updateLichSuTrangThai(NHM_LichSuTrangThai lichSu) {
    	lichsutrangthaidao.updateLichSuTrangThai(lichSu);
        return "redirect:/lichsutrangthai/viewLSTT?dhId=" + lichSu.getNhm_dh_id();
    }

    // Xóa lịch sử trạng thái
    @GetMapping("/deleteLSTT")
    public String deleteLichSuTrangThai(@RequestParam("lsttId") int lsttId, @RequestParam("dhId") int dhId) {
    	lichsutrangthaidao.deleteLichSuTrangThai(lsttId);
        return "redirect:/lichsutrangthai/viewLSTT?dhId=" + dhId;
    }
}
