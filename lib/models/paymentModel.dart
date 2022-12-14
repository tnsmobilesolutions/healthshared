import 'dart:convert';

class PaymentModel {
  String? paymentID;
  int? amount;
  String? paymentTime;
  String? errorDescription;
  String? errorCode;
  String? errorMessage;
  String? orderID;
  String? paymentStatus;
  String? paymentMode;

  PaymentModel({
    this.paymentID,
    this.amount,
    this.paymentTime,
    this.errorDescription,
    this.errorCode,
    this.errorMessage,
    this.orderID,
    this.paymentStatus,
    this.paymentMode,
  });

  PaymentModel copyWith({
    String? paymentID,
    int? amount,
    String? paymentTime,
    String? errorDescription,
    String? errorCode,
    String? errorMessage,
    String? orderID,
    String? paymentStatus,
    String? paymentMode,
  }) {
    return PaymentModel(
      paymentID: paymentID ?? this.paymentID,
      amount: amount ?? this.amount,
      paymentTime: paymentTime ?? this.paymentTime,
      errorDescription: errorDescription ?? this.errorDescription,
      errorCode: errorCode ?? this.errorCode,
      errorMessage: errorMessage ?? this.errorMessage,
      orderID: orderID ?? this.orderID,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      paymentMode: paymentMode ?? this.paymentMode,
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
    if (paymentStatus != null) {
      result.addAll({'paymentStatus': paymentStatus});
    }
    if (paymentMode != null) {
      result.addAll({'paymentMode': paymentMode});
    }

    return result;
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      paymentID: map['paymentID'],
      amount: map['amount'],
      paymentTime: map['paymentTime'],
      errorDescription: map['errorDescription'],
      errorCode: map['errorCode'],
      errorMessage: map['errorMessage'],
      orderID: map['orderID'],
      paymentStatus: map['paymentStatus'],
      paymentMode: map['paymentMode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) =>
      PaymentModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentModel(paymentID: $paymentID, amount: $amount, paymentTime: $paymentTime, errorDescription: $errorDescription, errorCode: $errorCode, errorMessage: $errorMessage, orderID: $orderID, paymentStatus: $paymentStatus, paymentMode: $paymentMode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentModel &&
        other.paymentID == paymentID &&
        other.amount == amount &&
        other.paymentTime == paymentTime &&
        other.errorDescription == errorDescription &&
        other.errorCode == errorCode &&
        other.errorMessage == errorMessage &&
        other.orderID == orderID &&
        other.paymentStatus == paymentStatus &&
        other.paymentMode == paymentMode;
  }

  @override
  int get hashCode {
    return paymentID.hashCode ^
        amount.hashCode ^
        paymentTime.hashCode ^
        errorDescription.hashCode ^
        errorCode.hashCode ^
        errorMessage.hashCode ^
        orderID.hashCode ^
        paymentStatus.hashCode ^
        paymentMode.hashCode;
  }
}
