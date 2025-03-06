CREATE DATABASE project3;
USE project3;

create TABLE NHM_TaiKhoan (
    nhm_tk_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_tk VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL,
    nhm_email VARCHAR(100) CHARACTER SET utf8mb4 UNIQUE NOT NULL,
    nhm_sdt VARCHAR(15) CHARACTER SET utf8mb4 UNIQUE NOT NULL,
    nhm_mat_khau VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL,
    nhm_loai_tk ENUM('User', 'Admin') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'User' 
);

create TABLE NHM_SanPham (
    nhm_sp_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_sp VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL,
    nhm_mo_ta TEXT CHARACTER SET utf8mb4,
    nhm_gia_ban DECIMAL(18,2) NOT NULL,
    nhm_so_luong_ton INT DEFAULT 0,
    nhm_loai_sp VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL 
);

CREATE TABLE NHM_DonHang (
    nhm_dh_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_tk_id INT, 
    nhm_ngay_dat_hang DATETIME DEFAULT CURRENT_TIMESTAMP,
    nhm_tong_tien DECIMAL(18,2) NOT NULL,
    nhm_trang_thai ENUM('Chờ xác nhận', 'Đang giao', 'Hoàn thành', 'Hủy') NOT NULL DEFAULT 'Chờ xác nhận',
    FOREIGN KEY (nhm_tk_id) REFERENCES NHM_TaiKhoan(nhm_tk_id) ON DELETE CASCADE
);

CREATE TABLE NHM_ChiTietDonHang (
    nhm_ctdh_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_dh_id INT,
    nhm_sp_id INT,
    nhm_so_luong INT CHECK (nhm_so_luong > 0),
    nhm_gia_ban DECIMAL(18,2) NOT NULL,
    FOREIGN KEY (nhm_dh_id) REFERENCES NHM_DonHang(nhm_dh_id) ON DELETE CASCADE,
    FOREIGN KEY (nhm_sp_id) REFERENCES NHM_SanPham(nhm_sp_id) ON DELETE CASCADE
);


CREATE TABLE NHM_LichSuTrangThai (
    nhm_lstt_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_dh_id INT,
    nhm_trang_thai_moi ENUM('Chờ xác nhận', 'Đang giao', 'Hoàn thành', 'Hủy') NOT NULL,
    nhm_ngay_thay_doi DATETIME DEFAULT CURRENT_TIMESTAMP,
    nhm_admin_id INT, 
    FOREIGN KEY (nhm_dh_id) REFERENCES NHM_DonHang(nhm_dh_id) ON DELETE CASCADE,
    FOREIGN KEY (nhm_admin_id) REFERENCES NHM_TaiKhoan(nhm_tk_id) ON DELETE CASCADE
);


