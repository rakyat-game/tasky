// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTask _$AddTaskFromJson(Map<String, dynamic> json) => AddTask(
      image: json['image'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      priority: json['priority'] as String?,
      dueDate: json['dueDate'] as String?,
    );

Map<String, dynamic> _$AddTaskToJson(AddTask instance) => <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'desc': instance.desc,
      'priority': instance.priority,
      'dueDate': instance.dueDate,
    };
