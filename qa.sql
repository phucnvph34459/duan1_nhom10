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
CREATE TABLE don_hang ( 
    id_donhang int primary key, 
    ho_ten varchar(100), 
    email varchar(50), 
    so_dt varchar (11), 
    trang_thai int, 
    ngay_dathang date,
    id_khachhang int, foreign key(id_khachhang) references khach_hang(id_khachhang)
) ;
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
    iddm int, foreign key(iddm) references danh_muc(iddm)
);
CREATE TABLE bien_the( 
    id_bienthe int primary key, 
    mau_sac int, 
    size int, 
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham)
);
CREATE TABLE anh_sanpham ( 
    id_img int primary key, 
    img varchar(255), 
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham)
);
CREATE TABLE lien_he ( 
    id_lienhe int primary key, 
    ho_ten varchar(255), 
    dia_chi varchar(255), 
    email varchar(50), 
    so_dt varchar(11), 
    id_khachhang int, foreign key(id_khachhang) references khach_hang(id_khachhang)
);
CREATE TABLE chi_tiet_gio_hang( 
    id_ctgh int primary key,  
    soluong int, 
    trang_thai int, 
    gia int,
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham),
    id_donhang int, foreign key(id_donhang) references don_hang(id_donhang)
);
CREATE TABLE chi_tiet_don_hang ( 
    id_ctdh int primary key,  
    soluong int, 
    trang_thai int, 
    tongdh int, 
    gia int,
    id_donhang int, foreign key(id_donhang) references don_hang(id_donhang),
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham)
);
CREATE TABLE gio_hang( 
    id_giohang int primary key, 
    so_luong int, 
    tong_gh double, 
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham),
    id_khachhang int, foreign key(id_khachhang) references khach_hang(id_khachhang)
);
CREATE TABLE binh_luan( 
    id_binh_luan int primary key, 
    noi_dung varchar(255), 
    ngay_binh_luan date, 
    danh_gia varchar(255),
    id_khachhang int, foreign key(id_khachhang) references khach_hang(id_khachhang), 
    id_sanpham int, foreign key(id_sanpham) references san_pham(id_sanpham)
);


