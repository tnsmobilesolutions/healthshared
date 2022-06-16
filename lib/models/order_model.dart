import 'dart:convert';

import 'package:healthshared/models/address_model.dart';

class Order {
  Order({
    this.address,
    this.deliveryDate,
    this.deliveryTime,
    this.name,
    this.paymentStatus,
    this.orderDate,
    this.orderId,
    this.orderTime,
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
      name: map['name'],
      paymentStatus: map['paymentStatus'],
      orderDate: map['orderDate'],
      orderId: map['orderId'],
      orderTime: map['orderTime'],
      prescriptionURL: map['prescriptionURL'] ?? '',
      userId: map['userId'],
      vendorId: map['vendorId'],
    );
  }

  final Address? address;
  final String? deliveryDate;
  final String? deliveryTime;
  final String? name;
  final String? paymentStatus;
  final String? orderDate;
  final String? orderId;
  final String? orderTime;
  final String prescriptionURL;
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
        orderDate.hashCode ^
        orderId.hashCode ^
        orderTime.hashCode ^
        prescriptionURL.hashCode ^
        userId.hashCode ^
        vendorId.hashCode;
  }

  @override
  String toString() {
    return 'Order(address: $address, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, name: $name, paymentStatus: $paymentStatus, orderDate: $orderDate, orderId: $orderId, orderTime: $orderTime, prescriptionURL: $prescriptionURL, userId: $userId, vendorId: $vendorId)';
  }

  Order copyWith({
    Address? address,
    String? deliveryDate,
    String? deliveryTime,
    String? name,
    String? paymentStatus,
    String? orderDate,
    String? orderId,
    String? orderTime,
    String? prescriptionURL,
    String? userId,
    String? vendorId,
  }) {
    return Order(
      address: address ?? this.address,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      name: name ?? this.name,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      orderDate: orderDate ?? this.orderDate,
      orderId: orderId ?? this.orderId,
      orderTime: orderTime ?? this.orderTime,
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
      'name': name,
      'paymentStatus': paymentStatus,
      'orderDate': orderDate,
      'orderId': orderId,
      'orderTime': orderTime,
      'prescriptionURL': prescriptionURL,
      'userId': userId,
      'vendorId': vendorId,
    };
  }

  String toJson() => json.encode(toMap());
}
