use test1 ;
create table NhanVien(
	MaNV int,
    HoTen varchar(100) not null,
    NgayVaolam date not null,
    Luong int ,
    primary key(MaNV)
)