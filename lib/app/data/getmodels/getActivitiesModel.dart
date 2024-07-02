import 'dart:convert';

List<GetActivitiesModel> getActivitiesModelFromJson(String str) =>
    List<GetActivitiesModel>.from(json.decode(str).map((x) => GetActivitiesModel.fromJson(x)));

String getActivitiesModelToJson(List<GetActivitiesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetActivitiesModel {
  final int? id;
  final int? userId;
  final DateTime? currentDate;
  final String? checkinTime;
  final String? checkoutTime;
  final List<Clothe>? danceClasses;
  final List<Clothe>? meals;
  final List<Clothe>? clothes;
  final List<Clothe>? showers;

  GetActivitiesModel({
    this.id,
    this.userId,
    this.currentDate,
    this.checkinTime,
    this.checkoutTime,
    this.danceClasses,
    this.meals,
    this.clothes,
    this.showers,
  });

  factory GetActivitiesModel.fromJson(Map<String, dynamic> json) => GetActivitiesModel(
        id: json["id"],
        userId: json["userId"],
        currentDate: json["currentDate"] == null ? null : DateTime.parse(json["currentDate"]),
        checkinTime: json["checkinTime"],
        checkoutTime: json["checkoutTime"],
        danceClasses: json["danceClasses"] == null
            ? []
            : List<Clothe>.from(json["danceClasses"]!.map((x) => Clothe.fromJson(x))),
        meals: json["meals"] == null ? [] : List<Clothe>.from(json["meals"]!.map((x) => Clothe.fromJson(x))),
        clothes: json["clothes"] == null ? [] : List<Clothe>.from(json["clothes"]!.map((x) => Clothe.fromJson(x))),
        showers: json["showers"] == null ? [] : List<Clothe>.from(json["showers"]!.map((x) => Clothe.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "currentDate": currentDate?.toIso8601String(),
        "checkinTime": checkinTime,
        "checkoutTime": checkoutTime,
        "danceClasses": danceClasses == null ? [] : List<dynamic>.from(danceClasses!.map((x) => x.toJson())),
        "meals": meals == null ? [] : List<dynamic>.from(meals!.map((x) => x.toJson())),
        "clothes": clothes == null ? [] : List<dynamic>.from(clothes!.map((x) => x.toJson())),
        "showers": showers == null ? [] : List<dynamic>.from(showers!.map((x) => x.toJson())),
      };
}

class Clothe {
  final int? id;
  final int? userActivityId;
  final String? name;
  final String? time;

  Clothe({
    this.id,
    this.userActivityId,
    this.name,
    this.time,
  });

  factory Clothe.fromJson(Map<String, dynamic> json) => Clothe(
        id: json["id"],
        userActivityId: json["userActivityId"],
        name: json["name"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userActivityId": userActivityId,
        "name": name,
        "time": time,
      };
}