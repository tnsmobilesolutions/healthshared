import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:healthshared/models/address_model.dart';
import 'package:healthshared/models/paymentModel.dart';

class MedicineOrder {
  Address? address;
  String? medicineType;
  String? deliveryDate;
  String? deliveryTime;
  String? esimatedDeliveryDate;
  String? estimatedDeliveryTime;
  String? billAmount;
  String? discount;
  String? netPayable;
  String? name;
  String? paymentStatus;
  String? orderStatus;
  String? orderDate;
  String? orderId;
  String? orderTime;
  String? cancellationNote;
  String? prescriptionURL;
  String? userId;
  String? vendorId;
  PaymentModel? paymentInfo;
  MedicineOrder({
    this.address,
    this.medicineType,
    this.deliveryDate,
    this.deliveryTime,
    this.esimatedDeliveryDate,
    this.estimatedDeliveryTime,
    this.billAmount,
    this.discount,
    this.netPayable,
    this.name,
    this.paymentStatus,
    this.orderStatus,
    this.orderDate,
    this.orderId,
    this.orderTime,
    this.cancellationNote,
    this.prescriptionURL,
    this.userId,
    this.vendorId,
    this.paymentInfo,
  });

  MedicineOrder copyWith({
    Address? address,
    String? medicineType,
    String? deliveryDate,
    String? deliveryTime,
    String? esimatedDeliveryDate,
    String? estimatedDeliveryTime,
    String? billAmount,
    String? discount,
    String? netPayable,
    String? name,
    String? paymentStatus,
    String? orderStatus,
    String? orderDate,
    String? orderId,
    String? orderTime,
    String? cancellationNote,
    String? prescriptionURL,
    String? userId,
    String? vendorId,
    PaymentModel? paymentInfo,
  }) {
    return MedicineOrder(
      address: address ?? this.address,
      medicineType: medicineType ?? this.medicineType,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      esimatedDeliveryDate: esimatedDeliveryDate ?? this.esimatedDeliveryDate,
      estimatedDeliveryTime:
          estimatedDeliveryTime ?? this.estimatedDeliveryTime,
      billAmount: billAmount ?? this.billAmount,
      discount: discount ?? this.discount,
      netPayable: netPayable ?? this.netPayable,
      name: name ?? this.name,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      orderStatus: orderStatus ?? this.orderStatus,
      orderDate: orderDate ?? this.orderDate,
      orderId: orderId ?? this.orderId,
      orderTime: orderTime ?? this.orderTime,
      cancellationNote: cancellationNote ?? this.cancellationNote,
      prescriptionURL: prescriptionURL ?? this.prescriptionURL,
      userId: userId ?? this.userId,
      vendorId: vendorId ?? this.vendorId,
      paymentInfo: paymentInfo ?? this.paymentInfo,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (address != null) {
      result.addAll({'address': address!.toMap()});
    }
    if (medicineType != null) {
      result.addAll({'medicineType': medicineType});
    }
    if (deliveryDate != null) {
      result.addAll({'deliveryDate': deliveryDate});
    }
    if (deliveryTime != null) {
      result.addAll({'deliveryTime': deliveryTime});
    }
    if (esimatedDeliveryDate != null) {
      result.addAll({'esimatedDeliveryDate': esimatedDeliveryDate});
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
    if (paymentStatus != null) {
      result.addAll({'paymentStatus': paymentStatus});
    }
    if (orderStatus != null) {
      result.addAll({'orderStatus': orderStatus});
    }
    if (orderDate != null) {
      result.addAll({'orderDate': orderDate});
    }
    if (orderId != null) {
      result.addAll({'orderId': orderId});
    }
    if (orderTime != null) {
      result.addAll({'orderTime': orderTime});
    }
    if (cancellationNote != null) {
      result.addAll({'cancellationNote': cancellationNote});
    }
    if (prescriptionURL != null) {
      result.addAll({'prescriptionURL': prescriptionURL});
    }
    if (userId != null) {
      result.addAll({'userId': userId});
    }
    if (vendorId != null) {
      result.addAll({'vendorId': vendorId});
    }
    if (paymentInfo != null) {
      result.addAll({'paymentInfo': paymentInfo!.toMap()});
    }

    return result;
  }

  factory MedicineOrder.fromMap(Map<String, dynamic> map) {
    return MedicineOrder(
      address: map['address'] != null ? Address.fromMap(map['address']) : null,
      medicineType: map['medicineType'],
      deliveryDate: map['deliveryDate'],
      deliveryTime: map['deliveryTime'],
      esimatedDeliveryDate: map['esimatedDeliveryDate'],
      estimatedDeliveryTime: map['estimatedDeliveryTime'],
      billAmount: map['billAmount'],
      discount: map['discount'],
      netPayable: map['netPayable'],
      name: map['name'],
      paymentStatus: map['paymentStatus'],
      orderStatus: map['orderStatus'],
      orderDate: map['orderDate'],
      orderId: map['orderId'],
      orderTime: map['orderTime'],
      cancellationNote: map['cancellationNote'],
      prescriptionURL: map['prescriptionURL'],
      userId: map['userId'],
      vendorId: map['vendorId'],
      paymentInfo: map['paymentInfo'] != null
          ? PaymentModel.fromMap(map['paymentInfo'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MedicineOrder.fromJson(String source) =>
      MedicineOrder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MedicineOrder(address: $address, medicineType: $medicineType, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, esimatedDeliveryDate: $esimatedDeliveryDate, estimatedDeliveryTime: $estimatedDeliveryTime, billAmount: $billAmount, discount: $discount, netPayable: $netPayable, name: $name, paymentStatus: $paymentStatus, orderStatus: $orderStatus, orderDate: $orderDate, orderId: $orderId, orderTime: $orderTime, cancellationNote: $cancellationNote, prescriptionURL: $prescriptionURL, userId: $userId, vendorId: $vendorId, paymentInfo: $paymentInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MedicineOrder &&
        other.address == address &&
        other.medicineType == medicineType &&
        other.deliveryDate == deliveryDate &&
        other.deliveryTime == deliveryTime &&
        other.esimatedDeliveryDate == esimatedDeliveryDate &&
        other.estimatedDeliveryTime == estimatedDeliveryTime &&
        other.billAmount == billAmount &&
        other.discount == discount &&
        other.netPayable == netPayable &&
        other.name == name &&
        other.paymentStatus == paymentStatus &&
        other.orderStatus == orderStatus &&
        other.orderDate == orderDate &&
        other.orderId == orderId &&
        other.orderTime == orderTime &&
        other.cancellationNote == cancellationNote &&
        other.prescriptionURL == prescriptionURL &&
        other.userId == userId &&
        other.vendorId == vendorId &&
        other.paymentInfo == paymentInfo;
  }

  @override
  int get hashCode {
    return address.hashCode ^
        medicineType.hashCode ^
        deliveryDate.hashCode ^
        deliveryTime.hashCode ^
        esimatedDeliveryDate.hashCode ^
        estimatedDeliveryTime.hashCode ^
        billAmount.hashCode ^
        discount.hashCode ^
        netPayable.hashCode ^
        name.hashCode ^
        paymentStatus.hashCode ^
        orderStatus.hashCode ^
        orderDate.hashCode ^
        orderId.hashCode ^
        orderTime.hashCode ^
        cancellationNote.hashCode ^
        prescriptionURL.hashCode ^
        userId.hashCode ^
        vendorId.hashCode ^
        paymentInfo.hashCode;
  }
}
