SELECT TOP (1000) [SoHoaDon]
      ,[MaKhachHang]
      ,[SoPhieu]
      ,[PhiGui]
      ,[PhiPhatSinh]
      ,[HinhThucThanhToan]
      ,[NgayThu]
      ,[MaChungCu]
      ,[TongTien]
      ,[NgayHetHan]
      ,[SoThangGui]
  FROM [BAIDOXE].[dbo].[PhieuThanhToan]
  ALTER TRIGGER trg_LogUPhieuThanhToan
ON PhieuThanhToan
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Ghi log PhiPhatSinh
    INSERT INTO Log_PhieuThanhToan (SoHoaDon, TruongThayDoi, GiaTriCu, GiaTriMoi, NgayThayDoi, NguoiThayDoi)
    SELECT i.SoHoaDon, 'PhiPhatSinh', CAST(d.PhiPhatSinh AS NVARCHAR), CAST(i.PhiPhatSinh AS NVARCHAR), GETDATE(), SYSTEM_USER
    FROM inserted i
    JOIN deleted d ON i.SoHoaDon = d.SoHoaDon
    WHERE ISNULL(i.PhiPhatSinh, 0) <> ISNULL(d.PhiPhatSinh, 0);

    -- Ghi log SoThangGui
    INSERT INTO Log_PhieuThanhToan (SoHoaDon, TruongThayDoi, GiaTriCu, GiaTriMoi, NgayThayDoi, NguoiThayDoi)
    SELECT i.SoHoaDon, 'SoThangGui', CAST(d.SoThangGui AS NVARCHAR), CAST(i.SoThangGui AS NVARCHAR), GETDATE(), SYSTEM_USER
    FROM inserted i
    JOIN deleted d ON i.SoHoaDon = d.SoHoaDon
    WHERE ISNULL(i.SoThangGui, 0) <> ISNULL(d.SoThangGui, 0);

    -- Ghi log TongTien
    INSERT INTO Log_PhieuThanhToan (SoHoaDon, TruongThayDoi, GiaTriCu, GiaTriMoi, NgayThayDoi, NguoiThayDoi)
    SELECT i.SoHoaDon, 'TongTien', CAST(d.TongTien AS NVARCHAR), CAST(i.TongTien AS NVARCHAR), GETDATE(), SYSTEM_USER
    FROM inserted i
    JOIN deleted d ON i.SoHoaDon = d.SoHoaDon
    WHERE ISNULL(i.TongTien, 0) <> ISNULL(d.TongTien, 0);

    -- Ghi log NgayHetHan
    INSERT INTO Log_PhieuThanhToan (SoHoaDon, TruongThayDoi, GiaTriCu, GiaTriMoi, NgayThayDoi, NguoiThayDoi)
    SELECT i.SoHoaDon, 'NgayHetHan', CONVERT(NVARCHAR, d.NgayHetHan, 120), CONVERT(NVARCHAR, i.NgayHetHan, 120), GETDATE(), SYSTEM_USER
    FROM inserted i
    JOIN deleted d ON i.SoHoaDon = d.SoHoaDon
    WHERE ISNULL(d.NgayHetHan, '') <> ISNULL(i.NgayHetHan, '');
END;

