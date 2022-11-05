// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:healthshared/models/address_model.dart';
import 'package:healthshared/models/paymentModel.dart';

class DiagnosisOrderModel {
  final String? diagnosisOrderId;
  final String? diagnosisName;
  final String prescriptionURL;
  final String? diagnosianID;
  final String? diagnosisOrderStatus;
  final String? userId;
  List<Address?>? diagnosisOrderAddress;
  PaymentModel? paymentInfo;

  DiagnosisOrderModel({
    this.diagnosisOrderId,
    this.diagnosisName,
    required this.prescriptionURL,
    this.diagnosianID,
    this.diagnosisOrderStatus,
    this.userId,
    this.diagnosisOrderAddress,
    this.paymentInfo,
  });

  DiagnosisOrderModel copyWith({
    String? diagnosisOrderId,
    String? diagnosisName,
    String? prescriptionURL,
    String? diagnosianID,
    String? diagnosisOrderStatus,
    String? userId,
    List<Address?>? diagnosisOrderAddress,
    PaymentModel? paymentInfo,
  }) {
    return DiagnosisOrderModel(
      diagnosisOrderId: diagnosisOrderId ?? this.diagnosisOrderId,
      diagnosisName: diagnosisName ?? this.diagnosisName,
      prescriptionURL: prescriptionURL ?? this.prescriptionURL,
      diagnosianID: diagnosianID ?? this.diagnosianID,
      diagnosisOrderStatus: diagnosisOrderStatus ?? this.diagnosisOrderStatus,
      userId: userId ?? this.userId,
      diagnosisOrderAddress:
          diagnosisOrderAddress ?? this.diagnosisOrderAddress,
      paymentInfo: paymentInfo ?? this.paymentInfo,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (diagnosisOrderId != null) {
      result.addAll({'diagnosisOrderId': diagnosisOrderId});
    }
    if (diagnosisName != null) {
      result.addAll({'diagnosisName': diagnosisName});
    }
    result.addAll({'prescriptionURL': prescriptionURL});
    if (diagnosianID != null) {
      result.addAll({'diagnosianID': diagnosianID});
    }
    if (diagnosisOrderStatus != null) {
      result.addAll({'diagnosisOrderStatus': diagnosisOrderStatus});
    }
    if (userId != null) {
      result.addAll({'userId': userId});
    }
    if (diagnosisOrderAddress != null) {
      result.addAll({
        'diagnosisOrderAddress':
            diagnosisOrderAddress!.map((x) => x?.toMap()).toList()
      });
    }
    if (paymentInfo != null) {
      result.addAll({'paymentInfo': paymentInfo!.toMap()});
    }

    return result;
  }

  factory DiagnosisOrderModel.fromMap(Map<String, dynamic> map) {
    return DiagnosisOrderModel(
      diagnosisOrderId: map['diagnosisOrderId'],
      diagnosisName: map['diagnosisName'],
      prescriptionURL: map['prescriptionURL'] ?? '',
      diagnosianID: map['diagnosianID'],
      diagnosisOrderStatus: map['diagnosisOrderStatus'],
      userId: map['userId'],
      diagnosisOrderAddress: map['diagnosisOrderAddress'] != null
          ? List<Address?>.from(
              map['diagnosisOrderAddress']?.map((x) => Address?.fromMap(x)))
          : null,
      paymentInfo: map['paymentInfo'] != null
          ? PaymentModel.fromMap(map['paymentInfo'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DiagnosisOrderModel.fromJson(String source) =>
      DiagnosisOrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DiagnosisOrder(diagnosisOrderId: $diagnosisOrderId, diagnosisName: $diagnosisName, prescriptionURL: $prescriptionURL, diagnosianID: $diagnosianID, diagnosisOrderStatus: $diagnosisOrderStatus, userId: $userId, diagnosisOrderAddress: $diagnosisOrderAddress, paymentInfo: $paymentInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DiagnosisOrderModel &&
        other.diagnosisOrderId == diagnosisOrderId &&
        other.diagnosisName == diagnosisName &&
        other.prescriptionURL == prescriptionURL &&
        other.diagnosianID == diagnosianID &&
        other.diagnosisOrderStatus == diagnosisOrderStatus &&
        other.userId == userId &&
        listEquals(other.diagnosisOrderAddress, diagnosisOrderAddress) &&
        other.paymentInfo == paymentInfo;
  }

  @override
  int get hashCode {
    return diagnosisOrderId.hashCode ^
        diagnosisName.hashCode ^
        prescriptionURL.hashCode ^
        diagnosianID.hashCode ^
        diagnosisOrderStatus.hashCode ^
        userId.hashCode ^
        diagnosisOrderAddress.hashCode ^
        paymentInfo.hashCode;
  }
}
