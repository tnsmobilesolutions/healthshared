import 'dart:convert';

import 'package:flutter/foundation.dart';

class ServiceAddress {
  final String? serviceAddressId;
  final String? addressLine1;
  final String? addressLine2;
  final String? city;
  final String? state;
  final List<String>? servicePincodes;
  final int? pincode;
  final double? longitude;
  final double? latitude;
  ServiceAddress({
    this.serviceAddressId,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.servicePincodes,
    this.pincode,
    this.longitude,
    this.latitude,
  });

  ServiceAddress copyWith({
    String? serviceAddressId,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    List<String>? servicePincodes,
    int? pincode,
    double? longitude,
    double? latitude,
  }) {
    return ServiceAddress(
      serviceAddressId: serviceAddressId ?? this.serviceAddressId,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      city: city ?? this.city,
      state: state ?? this.state,
      servicePincodes: servicePincodes ?? this.servicePincodes,
      pincode: pincode ?? this.pincode,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'serviceAddressId': serviceAddressId,
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'city': city,
      'state': state,
      'servicePincodes': servicePincodes,
      'pincode': pincode,
      'longitude': longitude,
      'latitude': latitude,
    };
  }

  factory ServiceAddress.fromMap(Map<String, dynamic> map) {
    return ServiceAddress(
      serviceAddressId: map['serviceAddressId'],
      addressLine1: map['addressLine1'],
      addressLine2: map['addressLine2'],
      city: map['city'],
      state: map['state'],
      servicePincodes: map['servicePincodes'] != null
          ? List<String>.from(map['servicePincodes'])
          : null,
      pincode: map['pincode']?.toInt(),
      longitude: map['longitude']?.toDouble(),
      latitude: map['latitude']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceAddress.fromJson(String source) =>
      ServiceAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ServiceAddress(serviceAddressId: $serviceAddressId, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, servicePincodes: $servicePincodes, pincode: $pincode, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ServiceAddress &&
        other.serviceAddressId == serviceAddressId &&
        other.addressLine1 == addressLine1 &&
        other.addressLine2 == addressLine2 &&
        other.city == city &&
        other.state == state &&
        listEquals(other.servicePincodes, servicePincodes) &&
        other.pincode == pincode &&
        other.longitude == longitude &&
        other.latitude == latitude;
  }

  @override
  int get hashCode {
    return serviceAddressId.hashCode ^
        addressLine1.hashCode ^
        addressLine2.hashCode ^
        city.hashCode ^
        state.hashCode ^
        servicePincodes.hashCode ^
        pincode.hashCode ^
        longitude.hashCode ^
        latitude.hashCode;
  }
}
