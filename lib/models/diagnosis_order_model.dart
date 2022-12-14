// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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
  final String? discount;
  final String? netPayable;
  final String? name;
  final String? orderDateTime;
  final String? cancellationNote;
  final String? diagnosisBillURL;
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
    this.discount,
    this.netPayable,
    this.name,
    this.orderDateTime,
    this.cancellationNote,
    this.diagnosisBillURL,
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
    String? discount,
    String? netPayable,
    String? name,
    String? orderDateTime,
    String? cancellationNote,
    String? diagnosisBillURL,
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
      discount: discount ?? this.discount,
      netPayable: netPayable ?? this.netPayable,
      name: name ?? this.name,
      orderDateTime: orderDateTime ?? this.orderDateTime,
      cancellationNote: cancellationNote ?? this.cancellationNote,
      diagnosisBillURL: diagnosisBillURL ?? this.diagnosisBillURL,
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
    if (discount != null) {
      result.addAll({'discount': discount});
    }
    if (netPayable != null) {
      result.addAll({'netPayable': netPayable});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (orderDateTime != null) {
      result.addAll({'orderDateTime': orderDateTime});
    }
    if (cancellationNote != null) {
      result.addAll({'cancellationNote': cancellationNote});
    }
    if (diagnosisBillURL != null) {
      result.addAll({'diagnosisBillURL': diagnosisBillURL});
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
      discount: map['discount'],
      netPayable: map['netPayable'],
      name: map['name'],
      orderDateTime: map['orderDateTime'],
      cancellationNote: map['cancellationNote'],
      diagnosisBillURL: map['diagnosisBillURL'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiagnosisOrderModel.fromJson(String source) =>
      DiagnosisOrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DiagnosisOrderModel(diagnosisOrderId: $diagnosisOrderId, diagnosisName: $diagnosisName, prescriptionURL: $prescriptionURL, diagnosianID: $diagnosianID, diagnosisOrderStatus: $diagnosisOrderStatus, userId: $userId, diagnosisOrderAddress: $diagnosisOrderAddress, paymentInfo: $paymentInfo, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, estimatedDeliveryDate: $estimatedDeliveryDate, estimatedDeliveryTime: $estimatedDeliveryTime, discount: $discount, netPayable: $netPayable, name: $name, orderDateTime: $orderDateTime, cancellationNote: $cancellationNote, diagnosisBillURL: $diagnosisBillURL)';
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
        other.discount == discount &&
        other.netPayable == netPayable &&
        other.name == name &&
        other.orderDateTime == orderDateTime &&
        other.cancellationNote == cancellationNote &&
        other.diagnosisBillURL == diagnosisBillURL;
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
        discount.hashCode ^
        netPayable.hashCode ^
        name.hashCode ^
        orderDateTime.hashCode ^
        cancellationNote.hashCode ^
        diagnosisBillURL.hashCode;
  }
}
