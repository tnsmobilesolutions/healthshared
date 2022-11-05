import 'dart:convert';

import 'package:healthshared/models/serviceAddressmodel.dart';
//import 'package:tnshealth_service_provider/models/serviceAddressmodel.dart';

class UserModel {
  final String? vendorID;
  final String? name;
  final String? email;
  final int? contactNumber;
  final String? serviceType;
  final String? medicineType;
  final ServiceAddress? serviceAddress;
  final String? fcmToken;
  UserModel({
    // int? pincodes,
    this.vendorID,
    this.name,
    this.email,
    this.contactNumber,
    this.serviceType,
    this.medicineType,
    this.serviceAddress,
    this.fcmToken,
  });

  UserModel copyWith({
    String? vendorID,
    String? name,
    String? email,
    int? contactNumber,
    String? serviceType,
    String? medicineType,
    ServiceAddress? serviceAddress,
    String? fcmToken,
  }) {
    return UserModel(
      vendorID: vendorID ?? this.vendorID,
      name: name ?? this.name,
      email: email ?? this.email,
      contactNumber: contactNumber ?? this.contactNumber,
      serviceType: serviceType ?? this.serviceType,
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
      'medicineType': medicineType,
      'serviceAddress': serviceAddress?.toMap(),
      'fcmToken': fcmToken,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      vendorID: map['vendorID'],
      name: map['name'],
      email: map['email'],
      contactNumber: map['contactNumber']?.toInt(),
      serviceType: map['serviceType'],
      medicineType: map['medicineType'],
      serviceAddress: map['serviceAddress'] != null
          ? ServiceAddress.fromMap(map['serviceAddress'])
          : null,
      fcmToken: map['fcmToken'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(vendorID: $vendorID, name: $name, email: $email, contactNumber: $contactNumber, serviceType: $serviceType, medicineType: $medicineType, serviceAddress: $serviceAddress, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.vendorID == vendorID &&
        other.name == name &&
        other.email == email &&
        other.contactNumber == contactNumber &&
        other.serviceType == serviceType &&
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
        medicineType.hashCode ^
        serviceAddress.hashCode ^
        fcmToken.hashCode;
  }
}
