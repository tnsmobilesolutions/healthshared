import 'dart:convert';

class PaymentModel {
  String? paymentID;
  int? amount;
  String? paymentTime;
  String? status;
  String? errorDescription;
  String? errorCode;
  String? errorMessage;
  String? orderID;
  PaymentModel({
    this.paymentID,
    this.amount,
    this.paymentTime,
    this.status,
    this.errorDescription,
    this.errorCode,
    this.errorMessage,
    this.orderID,
  });

  PaymentModel copyWith({
    String? paymentID,
    int? amount,
    String? paymentTime,
    String? status,
    String? errorDescription,
    String? errorCode,
    String? errorMessage,
    String? orderID,
  }) {
    return PaymentModel(
      paymentID: paymentID ?? this.paymentID,
      amount: amount ?? this.amount,
      paymentTime: paymentTime ?? this.paymentTime,
      status: status ?? this.status,
      errorDescription: errorDescription ?? this.errorDescription,
      errorCode: errorCode ?? this.errorCode,
      errorMessage: errorMessage ?? this.errorMessage,
      orderID: orderID ?? this.orderID,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (paymentID != null) {
      result.addAll({'paymentID': paymentID});
    }
    if (amount != null) {
      result.addAll({'amount': amount});
    }
    if (paymentTime != null) {
      result.addAll({'paymentTime': paymentTime});
    }
    if (status != null) {
      result.addAll({'status': status});
    }
    if (errorDescription != null) {
      result.addAll({'errorDescription': errorDescription});
    }
    if (errorCode != null) {
      result.addAll({'errorCode': errorCode});
    }
    if (errorMessage != null) {
      result.addAll({'errorMessage': errorMessage});
    }
    if (orderID != null) {
      result.addAll({'orderID': orderID});
    }

    return result;
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      paymentID: map['paymentID'],
      amount: map['amount']?.toInt(),
      paymentTime: map['paymentTime'],
      status: map['status'],
      errorDescription: map['errorDescription'],
      errorCode: map['errorCode'],
      errorMessage: map['errorMessage'],
      orderID: map['orderID'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) =>
      PaymentModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentModel(paymentID: $paymentID, amount: $amount, paymentTime: $paymentTime, status: $status, errorDescription: $errorDescription, errorCode: $errorCode, errorMessage: $errorMessage, orderID: $orderID)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentModel &&
        other.paymentID == paymentID &&
        other.amount == amount &&
        other.paymentTime == paymentTime &&
        other.status == status &&
        other.errorDescription == errorDescription &&
        other.errorCode == errorCode &&
        other.errorMessage == errorMessage &&
        other.orderID == orderID;
  }

  @override
  int get hashCode {
    return paymentID.hashCode ^
        amount.hashCode ^
        paymentTime.hashCode ^
        status.hashCode ^
        errorDescription.hashCode ^
        errorCode.hashCode ^
        errorMessage.hashCode ^
        orderID.hashCode;
  }
}
