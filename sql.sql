CREATE DATABASE project3;
USE project3;

-- Bảng tài khoản
CREATE TABLE NHM_TaiKhoan (
    nhm_tk_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_tk VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    nhm_email VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci UNIQUE NOT NULL,
    nhm_sdt VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci UNIQUE NOT NULL,
    nhm_mat_khau VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    nhm_loai_tk ENUM('User', 'Admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User'
);
SELECT * FROM NHM_TaiKhoan WHERE nhm_tk_id = 3;
-- Bảng sản phẩm
CREATE TABLE NHM_SanPham (
    nhm_sp_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_sp VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    nhm_mo_ta TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    nhm_gia_ban DECIMAL(18,2) NOT NULL,
    nhm_so_luong_ton INT DEFAULT 0,
    nhm_loai_sp VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO NHM_SanPham (nhm_ten_sp, nhm_mo_ta, nhm_gia_ban, nhm_so_luong_ton, nhm_loai_sp)
VALUES
  ('Sỏi x1 bao', 'Sản phẩm sỏi x1 bao chất lượng, giá ưu đãi', 95000.00, 200, 'Vật liệu xây dựng'),
  ('Cát x1 bao', 'Sản phẩm cát x1 bao đạt tiêu chuẩn, giá cạnh tranh', 100000.00, 200, 'Vật liệu xây dựng'),
  ('Da 1x2', 'Sản phẩm da 1x2 với mức giá ưu đãi cho khách hàng thân thiết', 120000000.00, 50, 'Vật liệu xây dựng'),
  ('Xi mang', 'Sản phẩm xi mang, đảm bảo chất lượng với giá bán ưu đãi', 115000.00, 150, 'Vật liệu xây dựng');

-- Bảng đơn hàng (thêm danh sách sản phẩm & số lượng)
CREATE TABLE NHM_DonHang (
    nhm_dh_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_nd varchar(50),
    nhm_ngay_dat_hang DATETIME DEFAULT CURRENT_TIMESTAMP,
    nhm_chi_tiet JSON NOT NULL
   
);

-- Bảng giá cả thị trường
CREATE TABLE NHM_GiaCaThiTruong (
    nhm_gctt_id INT PRIMARY KEY AUTO_INCREMENT,
    nhm_ten_sp VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    nhm_gia_thi_truong DECIMAL(18,2) NOT NULL,
    nhm_ngay_cap_nhat DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE NHM_SuKien (
    nhm_sk_id INT AUTO_INCREMENT PRIMARY KEY,
    nhm_ten_sk VARCHAR(255) NOT NULL,
    nhm_mo_ta TEXT,
    nhm_ngay_bat_dau DATETIME,
    nhm_ngay_ket_thuc DATETIME
);
CREATE TABLE NHM_SuKienDangKy (
    nhm_skdk_id INT AUTO_INCREMENT PRIMARY KEY,
    nhm_sk_id INT NOT NULL,        -- Khóa ngoại đến bảng NHM_SuKien
    nhm_tk_id INT NOT NULL,        -- Khóa ngoại đến bảng NHM_TaiKhoan
    nhm_ten_tk VARCHAR(255) NOT NULL, -- Lưu cả tên tài khoản (nếu muốn)
    nhm_ngay_dk DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_su_kien
        FOREIGN KEY (nhm_sk_id) REFERENCES NHM_SuKien(nhm_sk_id),
    CONSTRAINT fk_tai_khoan
        FOREIGN KEY (nhm_tk_id) REFERENCES NHM_TaiKhoan(nhm_tk_id)
);
