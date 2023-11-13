CREATE TABLE don_hang ( 
    id_donhang int primary key, 
    id_khachhang int, 
    ho_ten varchar(100), 
    email varchar(50), 
    so_dt varchar (11), 
    trang_thai int, 
    ngay_dathang date
) ;
CREATE TABLE chi_tiet_don_hang ( 
    id_ctdh int primary key, 
    id_sanpham int, 
    id_donhang int, 
    soluong int, 
    trang_thai int, 
    tongdh int, 
    gia int 
);
CREATE TABLE anh_sanpham ( 
    id_img int primary key, 
    img varchar(255), 
    id_sanpham int 
);
CREATE TABLE lien_he ( 
    id_lienhe int primary key, 
    ho_ten varchar(255), 
    dia_chi varchar(255), 
    email varchar(50), 
    so_dt varchar(11), 
    id_khachhang int 
);
CREATE TABLE gio_hang( 
    id_giohang int primary key, 
    id_khachhang int, 
    id_sanpham int, 
    so_luong int, 
    tong_gh double 
);
CREATE TABLE chi_tiet_gio_hang( 
    id_ctgh int primary key, 
    id_sanpham int, 
    id_donhang int, 
    soluong int, 
    trang_thai int, 
    gia int
);
CREATE TABLE bien_the( 
    id_bienthe int primary key, 
    mau_sac int, 
    size int, 
    id_sanpham int 
);
CREATE TABLE binh_luan( 
    id_binh_luan int primary key, 
    noi_dung varchar(255), 
    id_khach_hang int, 
    id_san_pham int, 
    ngay_binh_luan date, 
    danh_gia varchar(255) 
);
CREATE TABLE danh_muc( 
    iddm int primary key, 
    ten_danhmuc varchar(255), 
    mo_ta text, 
    trang_thai int 
);
CREATE TABLE san_pham( 
    id_sanpham int primary key, 
    name varchar(225), gia double, 
    bienthe int, 
    hinh_anh varchar(225), 
    mo_ta text, 
    so_luong int, 
    luot_xem int, 
    iddm int 
);
CREATE TABLE khach_hang( 
    id_khachhang int primary key, 
    tai_khoan varchar(50), 
    mat_khau varchar(50), 
    ho_ten varchar(50), 
    nam_sinh date, 
    dia_chi varchar(100), 
    email varchar(50), 
    so_dt varchar(11), 
    vai_tro int
);
