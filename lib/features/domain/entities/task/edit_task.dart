import 'package:json_annotation/json_annotation.dart';

part 'edit_task.g.dart';

@JsonSerializable()
class EditTask {
  final String? image;
  final String? title;
  final String? desc;
  final String? priority;
  final String? status;
  final String? user;

  const EditTask({
    this.image,
    this.title,
    this.desc,
    this.priority,
    this.status,
    this.user,
  });

  factory EditTask.fromJson(Map<String, dynamic> json) =>
      _$EditTaskFromJson(json);

  Map<String, dynamic> toJson() => _$EditTaskToJson(this);
}
