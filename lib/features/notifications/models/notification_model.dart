// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  int id;
  String title;
  String body;
  int userId;
  DateTime? createdAt;
  DateTime? updatedAt;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
     this.createdAt,
     this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
    id: json["id"],
    title: json["title"],
    body: json["body"],
    userId: json["user_id"],
    createdAt:json["created_at"]!=null? DateTime.parse(json["created_at"]):null,
    updatedAt:json["updated_at"]!=null? DateTime.parse(json["updated_at"]):null,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "body": body,
    "user_id": userId,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
