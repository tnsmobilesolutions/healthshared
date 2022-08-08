import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:healthshared/models/address_model.dart';

class Order extends Equatable {
  const Order({
    this.address,
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
    required this.prescriptionURL,
    this.userId,
    this.vendorId,
  });

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      address: map['address'] != null ? Address.fromMap(map['address']) : null,
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
    );
  }

  final Address? address;
  final String? deliveryDate;
  final String? deliveryTime;
  final String? esimatedDeliveryDate;
  final String? estimatedDeliveryTime;
  final String? billAmount;
  final String? discount;
  final String? netPayable;
  final String? name;
  final String? paymentStatus;
  final String? orderStatus;
  final String? orderDate;
  final String? orderId;
  final String? orderTime;
  final String? cancellationNote;
  final String? prescriptionURL;
  final String? userId;
  final String? vendorId;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Order &&
        other.address == address &&
        other.deliveryDate == deliveryDate &&
        other.deliveryTime == deliveryTime &&
        other.name == name &&
        other.paymentStatus == paymentStatus &&
        other.orderStatus == orderStatus &&
        other.orderDate == orderDate &&
        other.orderId == orderId &&
        other.orderTime == orderTime &&
        other.prescriptionURL == prescriptionURL &&
        other.userId == userId &&
        other.vendorId == vendorId;
  }

  @override
  int get hashCode {
    return address.hashCode ^
        deliveryDate.hashCode ^
        deliveryTime.hashCode ^
        name.hashCode ^
        paymentStatus.hashCode ^
        orderStatus.hashCode ^
        orderDate.hashCode ^
        orderId.hashCode ^
        orderTime.hashCode ^
        prescriptionURL.hashCode ^
        userId.hashCode ^
        vendorId.hashCode;
  }

  @override
  String toString() {
    return 'Order(address: $address, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, esimatedDeliveryDate: $esimatedDeliveryDate, estimatedDeliveryTime: $estimatedDeliveryTime, billAmount: $billAmount, discount: $discount, netPayable: $netPayable, name: $name, paymentStatus: $paymentStatus, orderStatus: $orderStatus, orderDate: $orderDate, orderId: $orderId, orderTime: $orderTime, cancellationNote: $cancellationNote, prescriptionURL: $prescriptionURL, userId: $userId, vendorId: $vendorId)';
  }

  Order copyWith({
    Address? address,
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
  }) {
    return Order(
      address: address ?? this.address,
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
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address?.toMap(),
      'deliveryDate': deliveryDate,
      'deliveryTime': deliveryTime,
      'esimatedDeliveryDate': esimatedDeliveryDate,
      'estimatedDeliveryTime': estimatedDeliveryTime,
      'billAmount': billAmount,
      'discount': discount,
      'netPayable': netPayable,
      'name': name,
      'paymentStatus': paymentStatus,
      'orderStatus': orderStatus,
      'orderDate': orderDate,
      'orderId': orderId,
      'orderTime': orderTime,
      'cancellationNote': cancellationNote,
      'prescriptionURL': prescriptionURL,
      'userId': userId,
      'vendorId': vendorId,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  List<Object> get props {
    return [
      // address,
      // deliveryDate,
      // deliveryTime,
      // esimatedDeliveryDate,
      // estimatedDeliveryTime,
      // billAmount,
      // discount,
      // netPayable,
      // name,
      // paymentStatus,
      // orderStatus,
      // orderDate,
      // orderId,
      // orderTime,
      // cancellationNote,
      // prescriptionURL,
      // userId,
      // vendorId,
    ];
  }
}
