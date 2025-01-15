create database bt5;
use bt5;
create table KhachHang(
	MaKH int,
    TenKH varchar(100),
    SoDienThoai varchar(11)not null,
    primary key (MaKH)
);

create table HoaDon(
	MaHD int ,
    NgayLap date,
    MaKH int,
    primary key (MaHD),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
);