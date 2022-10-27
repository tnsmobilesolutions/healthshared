import 'dart:convert';

import 'package:healthshared/models/serviceAddressmodel.dart';

class VendorModel {
  final String? vendorID;
  final String? name;
  final String? email;
  final int? contactNumber;
  final String? serviceType;
  final String? consultingFee;
  final String? medicineType;
  final ServiceAddress? serviceAddress;
  final String? fcmToken;
  VendorModel({
    // int? pincodes,
    this.vendorID,
    this.name,
    this.email,
    this.contactNumber,
    this.serviceType,
    this.consultingFee,
    this.medicineType,
    this.serviceAddress,
    this.fcmToken,
  });

  VendorModel copyWith({
    String? vendorID,
    String? name,
    String? email,
    int? contactNumber,
    String? serviceType,
    String? consultingFee,
    String? medicineType,
    ServiceAddress? serviceAddress,
    String? fcmToken,
  }) {
    return VendorModel(
      vendorID: vendorID ?? this.vendorID,
      name: name ?? this.name,
      email: email ?? this.email,
      contactNumber: contactNumber ?? this.contactNumber,
      serviceType: serviceType ?? this.serviceType,
      consultingFee: consultingFee ?? this.consultingFee,
      medicineType: medicineType ?? this.medicineType,
      serviceAddress: serviceAddress ?? this.serviceAddress,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'vendorID': vendorID,
      'name': name,
      'email': email,
      'contactNumber': contactNumber,
      'serviceType': serviceType,
      'consultingFee': consultingFee,
      'medicineType': medicineType,
      'serviceAddress': serviceAddress?.toMap(),
      'fcmToken': fcmToken,
    };
  }

  factory VendorModel.fromMap(Map<String, dynamic> map) {
    return VendorModel(
      vendorID: map['vendorID'],
      name: map['name'],
      email: map['email'],
      contactNumber: map['contactNumber']?.toInt(),
      serviceType: map['serviceType'],
      consultingFee: map['consultingFee'],
      medicineType: map['medicineType'],
      serviceAddress: map['serviceAddress'] != null
          ? ServiceAddress.fromMap(map['serviceAddress'])
          : null,
      fcmToken: map['fcmToken'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VendorModel.fromJson(String source) =>
      VendorModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(vendorID: $vendorID, name: $name, email: $email, contactNumber: $contactNumber, serviceType: $serviceType, consultingFee: $consultingFee, medicineType: $medicineType, serviceAddress: $serviceAddress, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VendorModel &&
        other.vendorID == vendorID &&
        other.name == name &&
        other.email == email &&
        other.contactNumber == contactNumber &&
        other.serviceType == serviceType &&
        other.consultingFee == consultingFee &&
        other.medicineType == medicineType &&
        other.serviceAddress == serviceAddress &&
        other.fcmToken == fcmToken;
  }

  @override
  int get hashCode {
    return vendorID.hashCode ^
        name.hashCode ^
        email.hashCode ^
        contactNumber.hashCode ^
        serviceType.hashCode ^
        consultingFee.hashCode ^
        medicineType.hashCode ^
        serviceAddress.hashCode ^
        fcmToken.hashCode;
  }
}
