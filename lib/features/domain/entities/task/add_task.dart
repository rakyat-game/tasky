import 'package:json_annotation/json_annotation.dart';

part 'add_task.g.dart';

@JsonSerializable()
class AddTask {
  final String? image;
  final String? title;
  final String? desc;
  final String? priority;
  final String? dueDate;

  const AddTask({
    this.image,
    this.title,
    this.desc,
    this.priority,
    this.dueDate,
  });

  factory AddTask.fromJson(Map<String, dynamic> json) =>
      _$AddTaskFromJson(json);

  Map<String, dynamic> toJson() => _$AddTaskToJson(this);
}
