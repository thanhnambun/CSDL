Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa varchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV varchar(15) not null,
TenSV varchar(7)not null,
Phai char(7),
NgaySinh datetime not null,
NoiSinh varchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH varchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

select MaSV , TenSV, HoSV, HocBong 
from dmsv
ORDER BY MaSV ASC;

SELECT MaSV, HoSV, TenSV, Phai
FROM DMSV
ORDER BY 
    CASE 
        WHEN Phai = 'Nam' THEN 1 
        WHEN Phai = 'Nữ' THEN 2 
        ELSE 3 
    END, 
    HoSV ASC, TenSV ASC;
    
SELECT NgaySinh, HoSV, TenSV, HocBong
FROM DMSV
ORDER BY  NgaySinh ASC, HocBong desc;

select * from dmmh where TenMH like 't%';

SELECT MaSV, HoSV, TenSV, Phai
FROM DMSV
where TenSV like '%i';

select *
from dmkhoa
where TenKhoa like '_n%';

select HoSV
from dmsv
where hosv like '%thi%' ;

select masv ,hosv , tensv, makhoa,hocbong
from dmsv 
where hocbong > '100000'
order by makhoa desc;

select masv ,hosv , tensv, makhoa,hocbong
from dmsv 
where hocbong > '150000' and noisinh ='hà nội';

select masv , makhoa ,phai
from dmsv
WHERE MaKhoa IN ('AV', 'VL');

SELECT MaSV, NgaySinh, NoiSinh, HocBong
FROM DMSV
WHERE NgaySinh BETWEEN '1991-01-01' AND '1992-06-05';

SELECT MaSV, NgaySinh, phai, makhoa
FROM DMSV
WHERE hocbong BETWEEN '80000' AND '150000';

SELECT MaMH, TenMH, SoTiet
FROM DMMH
WHERE SoTiet > 30 AND SoTiet < 45;

SELECT sv.MaSV,sv.HoSV, sv.TenSV, k.TenKhoa, sv.Phai
FROM DMSV sv
JOIN DMKhoa k ON sv.MaKhoa = k.MaKhoa
WHERE sv.Phai = 'Nam' AND (k.TenKhoa = 'Anh văn' OR k.TenKhoa = 'Tin học');

SELECT sv.MaSV, CONCAT(sv.HoSV, ' ', sv.TenSV) AS HoTen, sv.Phai
FROM DMSV sv
WHERE sv.Phai = 'Nữ' AND sv.TenSV LIKE '%N%';

SELECT HoSV, TenSV, NoiSinh, NgaySinh
FROM DMSV
WHERE NoiSinh = 'Hà Nội' AND month(NgaySinh) = 1992;

SELECT hosv,tensv,noisinh, YEAR(CURDATE()) - YEAR(NgaySinh) AS Tuoi, hocbong
FROM DMSV
WHERE YEAR(CURDATE()) - YEAR(NgaySinh) > 20;

SELECT hosv,tensv, YEAR(CURDATE()) - YEAR(NgaySinh) AS Tuoi, makhoa
FROM DMSV
WHERE YEAR(CURDATE()) - YEAR(NgaySinh) between '20' and '25';

SELECT MaSV, 
       Phai, 
       MaKhoa, 
       HocBong, 
       CASE 
           WHEN HocBong > 500000 THEN 'Học bổng cao' 
           ELSE 'Mức trung bình' 
       END AS MucHocBong
FROM DMSV;

SELECT COUNT(*) AS TongSoSinhVien 
FROM DMSV;	

SELECT 
    COUNT(*) AS TongSoSinhVien, 
    COUNT(CASE WHEN Phai = 'Nữ' THEN 1 END) AS TongSoSinhVienNu
FROM DMSV;

SELECT MaKhoa, COUNT(*) AS TongSoSinhVien
FROM DMSV
GROUP BY MaKhoa;

SELECT MaMH, COUNT(DISTINCT MaSV) AS SoLuongSinhVien
FROM KetQua
GROUP BY MaMH;

SELECT COUNT(DISTINCT MaMH) AS SoLuongMonHoc
FROM KetQua;

SELECT MaKhoa, SUM(HocBong) AS TongHocBong
FROM DMSV
GROUP BY MaKhoa;

SELECT MaKhoa, MAX(HocBong) AS HocBongCaoNhat
FROM DMSV
GROUP BY MaKhoa;

SELECT MaKhoa, 
       COUNT(CASE WHEN Phai = 'Nam' THEN 1 END) AS TongSVNam,
       COUNT(CASE WHEN Phai = 'Nữ' THEN 1 END) AS TongSVNu
FROM DMSV
GROUP BY MaKhoa;

SELECT YEAR(CURDATE()) - YEAR(NgaySinh) AS DoTuoi, COUNT(*) AS SoLuongSV
FROM DMSV
GROUP BY DoTuoi;

SELECT YEAR(NgaySinh) AS NamSinh, COUNT(*) AS SoLuongSV
FROM DMSV
GROUP BY NamSinh
HAVING COUNT(*) = 2;

select *
from dmsv
group by noisinh 
having COUNT(*) > 2;

select *
from ketqua
group by mamh 
having COUNT(*) > 3;

select * 
from ketqua
where lanthi > 2 ;