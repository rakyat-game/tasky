// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditTask _$EditTaskFromJson(Map<String, dynamic> json) => EditTask(
      image: json['image'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      priority: json['priority'] as String?,
      status: json['status'] as String?,
      user: json['auth'] as String?,
    );

Map<String, dynamic> _$EditTaskToJson(EditTask instance) => <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'desc': instance.desc,
      'priority': instance.priority,
      'status': instance.status,
      'auth': instance.user,
    };
