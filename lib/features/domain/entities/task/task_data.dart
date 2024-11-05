import 'package:json_annotation/json_annotation.dart';

part 'task_data.g.dart';

@JsonSerializable()
class TaskData {
  @JsonKey(name: '_id')
  final String? id;
  final String? image;
  final String? title;
  final String? desc;
  final String? priority;
  final String? status;
  final String? user;
  final String? createdAt;
  final String? updatedAt;
  @JsonKey(name: '__v')
  final int? V;

  const TaskData({
    this.id,
    this.image,
    this.title,
    this.desc,
    this.priority,
    this.status,
    this.user,
    this.createdAt,
    this.updatedAt,
    this.V,
  });

  factory TaskData.fromJson(Map<String, dynamic> json) =>
      _$TaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDataToJson(this);
}
