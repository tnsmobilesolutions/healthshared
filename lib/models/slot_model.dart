// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Slot extends Equatable {
  final String? slotId;
  final String? docName;
  final String? docAddress;
  final String? slotdate;
  final String? slotTime;
  final int? availableSlotCount;
  Slot({
    this.slotId,
    this.docName,
    this.docAddress,
    this.slotdate,
    this.slotTime,
    this.availableSlotCount,
  });

  Slot copyWith({
    String? slotId,
    String? docName,
    String? docAddress,
    String? slotdate,
    String? slotTime,
    int? availableSlotCount,
  }) {
    return Slot(
      slotId: slotId ?? this.slotId,
      docName: docName ?? this.docName,
      docAddress: docAddress ?? this.docAddress,
      slotdate: slotdate ?? this.slotdate,
      slotTime: slotTime ?? this.slotTime,
      availableSlotCount: availableSlotCount ?? this.availableSlotCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'slotId': slotId,
      'docName': docName,
      'docAddress': docAddress,
      'slotdate': slotdate,
      'slotTime': slotTime,
      'availableSlotCount': availableSlotCount,
    };
  }

  factory Slot.fromMap(Map<String, dynamic> map) {
    return Slot(
      slotId: map['slotId'],
      docName: map['docName'],
      docAddress: map['docAddress'],
      slotdate: map['slotdate'],
      slotTime: map['slotTime'],
      availableSlotCount: map['availableSlotCount']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Slot.fromJson(String source) => Slot.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Slot(slotId: $slotId, docName: $docName, docAddress: $docAddress, slotdate: $slotdate, slotTime: $slotTime, availableSlotCount: $availableSlotCount)';
  }

  @override
  List<Object> get props {
    return [
      // slotId,
      // docName,
      // docAddress,
      // slotdate,
      // slotTime,
      // availableSlotCount,
    ];
  }
}
