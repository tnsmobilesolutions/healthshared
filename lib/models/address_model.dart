import 'dart:convert';

import 'package:equatable/equatable.dart';

class Address extends Equatable {
  const Address({
    this.addressId,
    this.addressLine1,
    this.addressLine2,
    this.addressType,
    this.city,
    this.country,
    this.patientName,
    this.phoneNumber,
    this.pincode,
    this.state,
    this.latitude,
    this.longitude,
    this.isDefaultAddress,
  });

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source));

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      addressId: map['addressId'],
      addressLine1: map['addressLine1'],
      addressLine2: map['addressLine2'],
      addressType: map['addressType'],
      city: map['city'],
      country: map['country'],
      patientName: map['patientName'],
      phoneNumber: map['phoneNumber']?.toInt(),
      pincode: map['pincode']?.toInt(),
      state: map['state'],
      latitude: map['latitude']?.toDouble(),
      longitude: map['longitude']?.toDouble(),
      isDefaultAddress: map['isDefaultAddress'],
    );
  }

  final String? addressId;
  final String? addressLine1;
  final String? addressLine2;
  final String? addressType;
  final String? city;
  final String? country;
  final String? patientName;
  final int? phoneNumber;
  final int? pincode;
  final String? state;
  final double? latitude;
  final double? longitude;
  final bool? isDefaultAddress;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Address &&
        other.patientName == patientName &&
        other.addressId == addressId &&
        other.addressLine1 == addressLine1 &&
        other.addressLine2 == addressLine2 &&
        other.addressType == addressType &&
        other.city == city &&
        other.state == state &&
        other.pincode == pincode &&
        other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode {
    return patientName.hashCode ^
        addressId.hashCode ^
        addressLine1.hashCode ^
        addressLine2.hashCode ^
        addressType.hashCode ^
        city.hashCode ^
        state.hashCode ^
        pincode.hashCode ^
        phoneNumber.hashCode;
  }

  @override
  String toString() {
    return 'Address(addressId: $addressId, addressLine1: $addressLine1, addressLine2: $addressLine2, addressType: $addressType, city: $city, country: $country, patientName: $patientName, phoneNumber: $phoneNumber, pincode: $pincode, state: $state, latitude: $latitude, longitude: $longitude, isDefaultAddress: $isDefaultAddress)';
  }

  Address copyWith({
    String? addressId,
    String? addressLine1,
    String? addressLine2,
    String? addressType,
    String? city,
    String? country,
    String? patientName,
    int? phoneNumber,
    int? pincode,
    String? state,
    double? latitude,
    double? longitude,
    bool? isDefaultAddress,
  }) {
    return Address(
      addressId: addressId ?? this.addressId,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      addressType: addressType ?? this.addressType,
      city: city ?? this.city,
      country: country ?? this.country,
      patientName: patientName ?? this.patientName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      pincode: pincode ?? this.pincode,
      state: state ?? this.state,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isDefaultAddress: isDefaultAddress ?? this.isDefaultAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addressId': addressId,
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'addressType': addressType,
      'city': city,
      'country': country,
      'patientName': patientName,
      'phoneNumber': phoneNumber,
      'pincode': pincode,
      'state': state,
      'latitude': latitude,
      'longitude': longitude,
      'isDefaultAddress': isDefaultAddress,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  List<Object> get props {
    return [
      // addressId,
      // addressLine1,
      // addressLine2,
      // addressType,
      // city,
      // country,
      // patientName,
      // phoneNumber,
      // pincode,
      // state,
      // latitude,
      // longitude,
      // isDefaultAddress,
    ];
  }
}
