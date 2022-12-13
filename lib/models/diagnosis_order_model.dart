// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:healthshared/models/address_model.dart';
import 'package:healthshared/models/paymentModel.dart';

class DiagnosisOrderModel {
  final String? diagnosisOrderId;
  final String? diagnosisName;
  final String? prescriptionURL;
  final String? diagnosianID;
  final String? diagnosisOrderStatus;
  final String? userId;
  List<Address?>? diagnosisOrderAddress;
  PaymentModel? paymentInfo;
  final String? deliveryDate;
  final String? deliveryTime;
  final String? estimatedDeliveryDate;
  final String? estimatedDeliveryTime;
  final String? billAmount;
  final String? discount;
  final String? netPayable;
  final String? name;
  final String? paymentMode;
  final DateTime? orderDateTime;
  final String? cancellationNote;

  DiagnosisOrderModel({
    this.diagnosisOrderId,
    this.diagnosisName,
    this.prescriptionURL,
    this.diagnosianID,
    this.diagnosisOrderStatus,
    this.userId,
    this.diagnosisOrderAddress,
    this.paymentInfo,
    this.deliveryDate,
    this.deliveryTime,
    this.estimatedDeliveryDate,
    this.estimatedDeliveryTime,
    this.billAmount,
    this.discount,
    this.netPayable,
    this.name,
    this.paymentMode,
    this.orderDateTime,
    this.cancellationNote,
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
    String? deliveryDate,
    String? deliveryTime,
    String? estimatedDeliveryDate,
    String? estimatedDeliveryTime,
    String? billAmount,
    String? discount,
    String? netPayable,
    String? name,
    String? paymentMode,
    DateTime? orderDateTime,
    String? cancellationNote,
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
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      estimatedDeliveryDate:
          estimatedDeliveryDate ?? this.estimatedDeliveryDate,
      estimatedDeliveryTime:
          estimatedDeliveryTime ?? this.estimatedDeliveryTime,
      billAmount: billAmount ?? this.billAmount,
      discount: discount ?? this.discount,
      netPayable: netPayable ?? this.netPayable,
      name: name ?? this.name,
      paymentMode: paymentMode ?? this.paymentMode,
      orderDateTime: orderDateTime ?? this.orderDateTime,
      cancellationNote: cancellationNote ?? this.cancellationNote,
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
    if (prescriptionURL != null) {
      result.addAll({'prescriptionURL': prescriptionURL});
    }
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
    if (deliveryDate != null) {
      result.addAll({'deliveryDate': deliveryDate});
    }
    if (deliveryTime != null) {
      result.addAll({'deliveryTime': deliveryTime});
    }
    if (estimatedDeliveryDate != null) {
      result.addAll({'estimatedDeliveryDate': estimatedDeliveryDate});
    }
    if (estimatedDeliveryTime != null) {
      result.addAll({'estimatedDeliveryTime': estimatedDeliveryTime});
    }
    if (billAmount != null) {
      result.addAll({'billAmount': billAmount});
    }
    if (discount != null) {
      result.addAll({'discount': discount});
    }
    if (netPayable != null) {
      result.addAll({'netPayable': netPayable});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (paymentMode != null) {
      result.addAll({'paymentMode': paymentMode});
    }
    if (orderDateTime != null) {
      result.addAll({'orderDateTime': orderDateTime!.millisecondsSinceEpoch});
    }
    if (cancellationNote != null) {
      result.addAll({'cancellationNote': cancellationNote});
    }

    return result;
  }

  factory DiagnosisOrderModel.fromMap(Map<String, dynamic> map) {
    return DiagnosisOrderModel(
      diagnosisOrderId: map['diagnosisOrderId'],
      diagnosisName: map['diagnosisName'],
      prescriptionURL: map['prescriptionURL'],
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
      deliveryDate: map['deliveryDate'],
      deliveryTime: map['deliveryTime'],
      estimatedDeliveryDate: map['estimatedDeliveryDate'],
      estimatedDeliveryTime: map['estimatedDeliveryTime'],
      billAmount: map['billAmount'],
      discount: map['discount'],
      netPayable: map['netPayable'],
      name: map['name'],
      paymentMode: map['paymentMode'],
      orderDateTime: map['orderDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['orderDateTime'])
          : null,
      cancellationNote: map['cancellationNote'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiagnosisOrderModel.fromJson(String source) =>
      DiagnosisOrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DiagnosisOrderModel(diagnosisOrderId: $diagnosisOrderId, diagnosisName: $diagnosisName, prescriptionURL: $prescriptionURL, diagnosianID: $diagnosianID, diagnosisOrderStatus: $diagnosisOrderStatus, userId: $userId, diagnosisOrderAddress: $diagnosisOrderAddress, paymentInfo: $paymentInfo, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, estimatedDeliveryDate: $estimatedDeliveryDate, estimatedDeliveryTime: $estimatedDeliveryTime, billAmount: $billAmount, discount: $discount, netPayable: $netPayable, name: $name, paymentMode: $paymentMode, orderDateTime: $orderDateTime, cancellationNote: $cancellationNote)';
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
        other.paymentInfo == paymentInfo &&
        other.deliveryDate == deliveryDate &&
        other.deliveryTime == deliveryTime &&
        other.estimatedDeliveryDate == estimatedDeliveryDate &&
        other.estimatedDeliveryTime == estimatedDeliveryTime &&
        other.billAmount == billAmount &&
        other.discount == discount &&
        other.netPayable == netPayable &&
        other.name == name &&
        other.paymentMode == paymentMode &&
        other.orderDateTime == orderDateTime &&
        other.cancellationNote == cancellationNote;
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
        paymentInfo.hashCode ^
        deliveryDate.hashCode ^
        deliveryTime.hashCode ^
        estimatedDeliveryDate.hashCode ^
        estimatedDeliveryTime.hashCode ^
        billAmount.hashCode ^
        discount.hashCode ^
        netPayable.hashCode ^
        name.hashCode ^
        paymentMode.hashCode ^
        orderDateTime.hashCode ^
        cancellationNote.hashCode;
  }
}
