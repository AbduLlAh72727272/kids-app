// To parse this JSON data, do
//
//     final getFeeModel = getFeeModelFromJson(jsonString);

import 'dart:convert';

List<GetFeeModel> getFeeModelFromJson(String str) => List<GetFeeModel>.from(json.decode(str).map((x) => GetFeeModel.fromJson(x)));

String getFeeModelToJson(List<GetFeeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetFeeModel {
    final int? id;
    final int? userId;
    final String? month;
    final DateTime? paymentDate;
    final String? payMode;
    final String? totalPending;
    final String? status;

    GetFeeModel({
        this.id,
        this.userId,
        this.month,
        this.paymentDate,
        this.payMode,
        this.totalPending,
        this.status,
    });

    factory GetFeeModel.fromJson(Map<String, dynamic> json) => GetFeeModel(
        id: json["id"],
        userId: json["user_id"],
        month: json["month"],
        paymentDate: json["payment_date"] == null ? null : DateTime.parse(json["payment_date"]),
        payMode: json["pay_mode"],
        totalPending: json["total_pending"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "month": month,
        "payment_date": paymentDate?.toIso8601String(),
        "pay_mode": payMode,
        "total_pending": totalPending,
        "status": status,
    };
}
