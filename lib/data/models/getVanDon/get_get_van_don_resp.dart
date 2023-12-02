

class GetGetVanDonResp {
  String? message;
  Data? data;

  GetGetVanDonResp({this.message, this.data});

  GetGetVanDonResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? code;
  String? fromName;
  String? fromContact;
  String? fromAddress1;
  String? fromAddress2;
  String? fromPhone;
  String? fromEmail;
  dynamic fromCountryID;
  int? fromProvinceID;
  int? fromDistrictID;
  String? toName;
  String? toContact;
  String? toAddress1;
  String? toAddress2;
  String? toPhone;
  String? toEmail;
  dynamic toCountryID;
  int? toProvinceID;
  int? toDistrictID;
  int? loaiHangID;
  dynamic hinhThucChuyenID;
  int? serviceID;
  String? moTa;
  int? soKien;
  int? giaTri;
  int? tongKhoiLuong;
  int? tongKhoiLuongTheTich;
  String? ngayNhan;
  String? gioNhan;
  String? phutNhan;
  dynamic userID;
  dynamic accountNumber;
  dynamic nguoiKyNhan;
  dynamic chuKyImageURL;
  int? cuocPhiTongTien;
  dynamic thoiGianVanChuyen;
  dynamic emailNhanThongBaoPhatHang;
  dynamic phoneNhanThongBaoPhatHang;
  dynamic dateCreate;
  dynamic length;
  dynamic width;
  dynamic height;
  dynamic agentID;
  dynamic employeeID;
  dynamic bangGiaID;
  dynamic cod;
  dynamic cODFee;
  dynamic zoneID;
  dynamic quality;
  dynamic vat;
  dynamic taxCode;
  dynamic taxName;
  dynamic payMethod;
  dynamic payBank;
  LoaiHang? loaiHang;
  dynamic hinhThucChuyen;
  Service? service;

  Data(
      {this.id,
      this.code,
      this.fromName,
      this.fromContact,
      this.fromAddress1,
      this.fromAddress2,
      this.fromPhone,
      this.fromEmail,
      this.fromCountryID,
      this.fromProvinceID,
      this.fromDistrictID,
      this.toName,
      this.toContact,
      this.toAddress1,
      this.toAddress2,
      this.toPhone,
      this.toEmail,
      this.toCountryID,
      this.toProvinceID,
      this.toDistrictID,
      this.loaiHangID,
      this.hinhThucChuyenID,
      this.serviceID,
      this.moTa,
      this.soKien,
      this.giaTri,
      this.tongKhoiLuong,
      this.tongKhoiLuongTheTich,
      this.ngayNhan,
      this.gioNhan,
      this.phutNhan,
      this.userID,
      this.accountNumber,
      this.nguoiKyNhan,
      this.chuKyImageURL,
      this.cuocPhiTongTien,
      this.thoiGianVanChuyen,
      this.emailNhanThongBaoPhatHang,
      this.phoneNhanThongBaoPhatHang,
      this.dateCreate,
      this.length,
      this.width,
      this.height,
      this.agentID,
      this.employeeID,
      this.bangGiaID,
      this.cod,
      this.cODFee,
      this.zoneID,
      this.quality,
      this.vat,
      this.taxCode,
      this.taxName,
      this.payMethod,
      this.payBank,
      this.loaiHang,
      this.hinhThucChuyen,
      this.service});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    code = json['Code'];
    fromName = json['FromName'];
    fromContact = json['FromContact'];
    fromAddress1 = json['FromAddress1'];
    fromAddress2 = json['FromAddress2'];
    fromPhone = json['FromPhone'];
    fromEmail = json['FromEmail'];
    fromCountryID = json['FromCountryID'];
    fromProvinceID = json['FromProvinceID'];
    fromDistrictID = json['FromDistrictID'];
    toName = json['ToName'];
    toContact = json['ToContact'];
    toAddress1 = json['ToAddress1'];
    toAddress2 = json['ToAddress2'];
    toPhone = json['ToPhone'];
    toEmail = json['ToEmail'];
    toCountryID = json['ToCountryID'];
    toProvinceID = json['ToProvinceID'];
    toDistrictID = json['ToDistrictID'];
    loaiHangID = json['LoaiHangID'];
    hinhThucChuyenID = json['HinhThucChuyenID'];
    serviceID = json['ServiceID'];
    moTa = json['MoTa'];
    soKien = json['SoKien'];
    giaTri = json['GiaTri'];
    tongKhoiLuong = json['TongKhoiLuong'];
    tongKhoiLuongTheTich = json['TongKhoiLuongTheTich'];
    ngayNhan = json['NgayNhan'];
    gioNhan = json['GioNhan'];
    phutNhan = json['PhutNhan'];
    userID = json['UserID'];
    accountNumber = json['AccountNumber'];
    nguoiKyNhan = json['NguoiKyNhan'];
    chuKyImageURL = json['ChuKyImageURL'];
    cuocPhiTongTien = json['CuocPhi_TongTien'];
    thoiGianVanChuyen = json['ThoiGianVanChuyen'];
    emailNhanThongBaoPhatHang = json['EmailNhanThongBaoPhatHang'];
    phoneNhanThongBaoPhatHang = json['PhoneNhanThongBaoPhatHang'];
    dateCreate = json['DateCreate'];
    length = json['length'];
    width = json['Width'];
    height = json['Height'];
    agentID = json['AgentID'];
    employeeID = json['EmployeeID'];
    bangGiaID = json['BangGiaID'];
    cod = json['COD'];
    cODFee = json['CODFee'];
    zoneID = json['ZoneID'];
    quality = json['Quality'];
    vat = json['VAT'];
    taxCode = json['TaxCode'];
    taxName = json['TaxName'];
    payMethod = json['PayMethod'];
    payBank = json['PayBank'];
    loaiHang =
        json['LoaiHang'] != null ? LoaiHang.fromJson(json['LoaiHang']) : null;
    hinhThucChuyen = json['HinhThucChuyen'];
    service =
        json['Service'] != null ? Service.fromJson(json['Service']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['ID'] = id;
    }
    if (code != null) {
      data['Code'] = code;
    }
    if (fromName != null) {
      data['FromName'] = fromName;
    }
    if (fromContact != null) {
      data['FromContact'] = fromContact;
    }
    if (fromAddress1 != null) {
      data['FromAddress1'] = fromAddress1;
    }
    if (fromAddress2 != null) {
      data['FromAddress2'] = fromAddress2;
    }
    if (fromPhone != null) {
      data['FromPhone'] = fromPhone;
    }
    if (fromEmail != null) {
      data['FromEmail'] = fromEmail;
    }
    if (fromCountryID != null) {
      data['FromCountryID'] = fromCountryID;
    }
    if (fromProvinceID != null) {
      data['FromProvinceID'] = fromProvinceID;
    }
    if (fromDistrictID != null) {
      data['FromDistrictID'] = fromDistrictID;
    }
    if (toName != null) {
      data['ToName'] = toName;
    }
    if (toContact != null) {
      data['ToContact'] = toContact;
    }
    if (toAddress1 != null) {
      data['ToAddress1'] = toAddress1;
    }
    if (toAddress2 != null) {
      data['ToAddress2'] = toAddress2;
    }
    if (toPhone != null) {
      data['ToPhone'] = toPhone;
    }
    if (toEmail != null) {
      data['ToEmail'] = toEmail;
    }
    if (toCountryID != null) {
      data['ToCountryID'] = toCountryID;
    }
    if (toProvinceID != null) {
      data['ToProvinceID'] = toProvinceID;
    }
    if (toDistrictID != null) {
      data['ToDistrictID'] = toDistrictID;
    }
    if (loaiHangID != null) {
      data['LoaiHangID'] = loaiHangID;
    }
    if (hinhThucChuyenID != null) {
      data['HinhThucChuyenID'] = hinhThucChuyenID;
    }
    if (serviceID != null) {
      data['ServiceID'] = serviceID;
    }
    if (moTa != null) {
      data['MoTa'] = moTa;
    }
    if (soKien != null) {
      data['SoKien'] = soKien;
    }
    if (giaTri != null) {
      data['GiaTri'] = giaTri;
    }
    if (tongKhoiLuong != null) {
      data['TongKhoiLuong'] = tongKhoiLuong;
    }
    if (tongKhoiLuongTheTich != null) {
      data['TongKhoiLuongTheTich'] = tongKhoiLuongTheTich;
    }
    if (ngayNhan != null) {
      data['NgayNhan'] = ngayNhan;
    }
    if (gioNhan != null) {
      data['GioNhan'] = gioNhan;
    }
    if (phutNhan != null) {
      data['PhutNhan'] = phutNhan;
    }
    if (userID != null) {
      data['UserID'] = userID;
    }
    if (accountNumber != null) {
      data['AccountNumber'] = accountNumber;
    }
    if (nguoiKyNhan != null) {
      data['NguoiKyNhan'] = nguoiKyNhan;
    }
    if (chuKyImageURL != null) {
      data['ChuKyImageURL'] = chuKyImageURL;
    }
    if (cuocPhiTongTien != null) {
      data['CuocPhi_TongTien'] = cuocPhiTongTien;
    }
    if (thoiGianVanChuyen != null) {
      data['ThoiGianVanChuyen'] = thoiGianVanChuyen;
    }
    if (emailNhanThongBaoPhatHang != null) {
      data['EmailNhanThongBaoPhatHang'] = emailNhanThongBaoPhatHang;
    }
    if (phoneNhanThongBaoPhatHang != null) {
      data['PhoneNhanThongBaoPhatHang'] = phoneNhanThongBaoPhatHang;
    }
    if (dateCreate != null) {
      data['DateCreate'] = dateCreate;
    }
    if (length != null) {
      data['length'] = length;
    }
    if (width != null) {
      data['Width'] = width;
    }
    if (height != null) {
      data['Height'] = height;
    }
    if (agentID != null) {
      data['AgentID'] = agentID;
    }
    if (employeeID != null) {
      data['EmployeeID'] = employeeID;
    }
    if (bangGiaID != null) {
      data['BangGiaID'] = bangGiaID;
    }
    if (cod != null) {
      data['COD'] = cod;
    }
    if (cODFee != null) {
      data['CODFee'] = cODFee;
    }
    if (zoneID != null) {
      data['ZoneID'] = zoneID;
    }
    if (quality != null) {
      data['Quality'] = quality;
    }
    if (vat != null) {
      data['VAT'] = vat;
    }
    if (taxCode != null) {
      data['TaxCode'] = taxCode;
    }
    if (taxName != null) {
      data['TaxName'] = taxName;
    }
    if (payMethod != null) {
      data['PayMethod'] = payMethod;
    }
    if (payBank != null) {
      data['PayBank'] = payBank;
    }
    if (loaiHang != null) {
      data['LoaiHang'] = loaiHang?.toJson();
    }
    if (hinhThucChuyen != null) {
      data['HinhThucChuyen'] = hinhThucChuyen;
    }
    if (service != null) {
      data['Service'] = service?.toJson();
    }
    return data;
  }
}

class LoaiHang {
  int? id;
  String? name;

  LoaiHang({this.id, this.name});

  LoaiHang.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['ID'] = id;
    }
    if (name != null) {
      data['Name'] = name;
    }
    return data;
  }
}

class Service {
  int? id;
  String? name;
  String? description;
  String? imageURL;
  int? isLocal;
  int? phuPhiXangDauPhanTram;
  int? phuPhiKhacTien;
  int? isUSD;
  int? isInput;
  dynamic defaultTransferToServiceID;
  int? isOnline;

  Service(
      {this.id,
      this.name,
      this.description,
      this.imageURL,
      this.isLocal,
      this.phuPhiXangDauPhanTram,
      this.phuPhiKhacTien,
      this.isUSD,
      this.isInput,
      this.defaultTransferToServiceID,
      this.isOnline});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    name = json['Name'];
    description = json['Description'];
    imageURL = json['ImageURL'];
    isLocal = json['IsLocal'];
    phuPhiXangDauPhanTram = json['PhuPhiXangDau_PhanTram'];
    phuPhiKhacTien = json['PhuPhiKhac_Tien'];
    isUSD = json['IsUSD'];
    isInput = json['IsInput'];
    defaultTransferToServiceID = json['DefaultTransferToServiceID'];
    isOnline = json['IsOnline'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['ID'] = id;
    }
    if (name != null) {
      data['Name'] = name;
    }
    if (description != null) {
      data['Description'] = description;
    }
    if (imageURL != null) {
      data['ImageURL'] = imageURL;
    }
    if (isLocal != null) {
      data['IsLocal'] = isLocal;
    }
    if (phuPhiXangDauPhanTram != null) {
      data['PhuPhiXangDau_PhanTram'] = phuPhiXangDauPhanTram;
    }
    if (phuPhiKhacTien != null) {
      data['PhuPhiKhac_Tien'] = phuPhiKhacTien;
    }
    if (isUSD != null) {
      data['IsUSD'] = isUSD;
    }
    if (isInput != null) {
      data['IsInput'] = isInput;
    }
    if (defaultTransferToServiceID != null) {
      data['DefaultTransferToServiceID'] = defaultTransferToServiceID;
    }
    if (isOnline != null) {
      data['IsOnline'] = isOnline;
    }
    return data;
  }
}
