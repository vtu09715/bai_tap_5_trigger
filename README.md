## BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

## SUBJECT: Trigger on mssql

## A. Trình bày lại đầu bài của đồ án PT&TKHT:
## 1. Mô tả bài toán của đồ án PT&TKHT, đưa ra yêu cầu của bài toán đó
# 2. Cơ sở dữ liệu của Đồ án PT&TKHT :Có database với các bảng dữ liệu cần thiết (3nf),Các bảng này đã có PK, FK, CK cần thiết
 
# ĐỀ TÀI: PHÂN TÍCH VÀ THIẾT KẾ HỆ THỐNG QUẢN LÝ BÃI ĐỖ XE CỦA CHUNG CƯ

# 1: CƠ SỞ DỮ LIỆU CỦA BÀI TOÁN 
# TẠO 1 DATABASE GỒM CÁC BẢNG SAU
![image](https://github.com/user-attachments/assets/00608ce4-f2e1-4292-bf7a-b4a32235e2fd)
# BẢNG ChungCu
![image](https://github.com/user-attachments/assets/252deb38-781d-4a56-b1cb-47e95ef25a8b)
# BẢNG KhachHang
![image](https://github.com/user-attachments/assets/0dc15528-2018-4006-a078-9fcef0c954fd)
# BẢNG PhuongTien
![image](https://github.com/user-attachments/assets/5488f4f1-e096-4d03-ae42-a3ddb18f0402)
# KHOÁ NGOẠI CỦA BẢNG PhuongTien
![image](https://github.com/user-attachments/assets/91d0503f-9c54-47ff-bd88-62a3ce3ca985)
# BẢNG ThongTinGui
![image](https://github.com/user-attachments/assets/e4add5e5-3ce1-47e6-b5ad-fcf8082a84dc)
![image](https://github.com/user-attachments/assets/870ccde5-1afd-46ba-bbbe-10ffcfe6e484)
# KHOÁ NGOẠI CỦA BẢNG ThongTinGui
![image](https://github.com/user-attachments/assets/21aff73e-0bc8-4fc2-bf26-69eb097d5cf8)
# BẢNG  PhieuThanhToan
![image](https://github.com/user-attachments/assets/e4e72f45-9d7f-4f22-bac4-35887d9257d1)
![image](https://github.com/user-attachments/assets/768fc11f-6539-43b7-8a77-c7e2b9149fe5)
![image](https://github.com/user-attachments/assets/680bb09b-50e2-4bdf-9e8a-07086ad47da4)
# KHOÁ NGOẠI CỦA BẢNG PhieuThanhToan
![image](https://github.com/user-attachments/assets/3f260eab-ab9a-4ff7-bba1-f388a4b6fc04)
# SƠ ĐỒ LIÊN KẾT KHOÁ NGOẠI CỦA CÁC BẢNG 
# 2 TẠO TRƯỜNG PHI CHUẨN CHO BẢNG PhieuThanhToan (TongTien / NgayHetHan)
![image](https://github.com/user-attachments/assets/b1bf8819-7f72-46d9-b8dc-99a74dc6d9ba)

# Việc thêm 2 trường phi chuẩn này là vô cùng cần thiết cho việc tính toán như tự động tính toán tổng tiền khách hàng cần phải thanh toán và tự động tính ngày hết hạn gửi xe của khách hàng giúp nhân viên quản lý dễ dàng hơn.

# 3 viết trigger cho bảng PhieuThanhToan
![image](https://github.com/user-attachments/assets/69240569-71cd-4c7d-9171-4710c6f1e4ab)
# Mục đích của việc sử dụng trigger cho bảng này để tự đọng hoá quy trình tính toán phức tạp, đảm bảo tính nhất quán của dữ liệu, tránh sai sót do con người, giảm tải cho các ứng dụng phía trên.
![image](https://github.com/user-attachments/assets/ce7b1752-e3a7-4e61-8fa1-2959c5a7eade)
# Tự động hoá tính toán ngày hết hạn, tự động tính tổng tiền.
![image](https://github.com/user-attachments/assets/dddfe704-1d31-4c26-9b74-1b9f0c72efef)
# Với những dữ liệu demo em đã nhập ở đầu khi tạo table thì đã sử dụng trigger để auto run việc tính tổng tiền thanh toán và auto việc tính ngày hết hạn gửi xe của khách hàng bỏ đi sử rủi do sai sót do con người.






