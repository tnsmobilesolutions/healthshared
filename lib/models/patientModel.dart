import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:healthshared/models/address_model.dart';

class PatientModel {
  String? uid;
  String? userId;
  String? name;
  String? contactNumber;
  String? country;
  String? email;
  String? gender;
  String? bloodGroup;
  String? height;
  String? weight;
  String? fcmToken;
  List<Address?>? address;
  PatientModel({
    this.uid,
    this.userId,
    this.name,
    this.contactNumber,
    this.country,
    this.email,
    this.gender,
    this.bloodGroup,
    this.height,
    this.weight,
    this.fcmToken,
    this.address,
  });

  PatientModel copyWith({
    String? uid,
    String? userId,
    String? name,
    String? contactNumber,
    String? country,
    String? email,
    String? gender,
    String? bloodGroup,
    String? height,
    String? weight,
    String? fcmToken,
    List<Address?>? address,
  }) {
    return PatientModel(
      uid: uid ?? this.uid,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      contactNumber: contactNumber ?? this.contactNumber,
      country: country ?? this.country,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      fcmToken: fcmToken ?? this.fcmToken,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (uid != null) {
      result.addAll({'uid': uid});
    }
    if (userId != null) {
      result.addAll({'userId': userId});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (contactNumber != null) {
      result.addAll({'contactNumber': contactNumber});
    }
    if (country != null) {
      result.addAll({'country': country});
    }
    if (email != null) {
      result.addAll({'email': email});
    }
    if (gender != null) {
      result.addAll({'gender': gender});
    }
    if (bloodGroup != null) {
      result.addAll({'bloodGroup': bloodGroup});
    }
    if (height != null) {
      result.addAll({'height': height});
    }
    if (weight != null) {
      result.addAll({'weight': weight});
    }
    if (fcmToken != null) {
      result.addAll({'fcmToken': fcmToken});
    }
    if (address != null) {
      result.addAll({'address': address!.map((x) => x?.toMap()).toList()});
    }

    return result;
  }

  factory PatientModel.fromMap(Map<String, dynamic> map) {
    return PatientModel(
      uid: map['uid'],
      userId: map['userId'],
      name: map['name'],
      contactNumber: map['contactNumber'],
      country: map['country'],
      email: map['email'],
      gender: map['gender'],
      bloodGroup: map['bloodGroup'],
      height: map['height'],
      weight: map['weight'],
      fcmToken: map['fcmToken'],
      address: map['address'] != null
          ? List<Address?>.from(map['address']?.map((x) => Address?.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PatientModel.fromJson(String source) =>
      PatientModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AppUser(uid: $uid, userId: $userId, name: $name, contactNumber: $contactNumber, country: $country, email: $email, gender: $gender, bloodGroup: $bloodGroup, height: $height, weight: $weight, fcmToken: $fcmToken, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PatientModel &&
        other.uid == uid &&
        other.userId == userId &&
        other.name == name &&
        other.contactNumber == contactNumber &&
        other.country == country &&
        other.email == email &&
        other.gender == gender &&
        other.bloodGroup == bloodGroup &&
        other.height == height &&
        other.weight == weight &&
        other.fcmToken == fcmToken &&
        listEquals(other.address, address);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        userId.hashCode ^
        name.hashCode ^
        contactNumber.hashCode ^
        country.hashCode ^
        email.hashCode ^
        gender.hashCode ^
        bloodGroup.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        fcmToken.hashCode ^
        address.hashCode;
  }
}
