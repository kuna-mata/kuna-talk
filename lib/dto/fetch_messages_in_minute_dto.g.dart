// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_messages_in_minute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchMessageInMinuteDto _$FetchMessageInMinuteDtoFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['senderId', 'receiverId', 'createdAt'],
  );
  return FetchMessageInMinuteDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$FetchMessageInMinuteDtoToJson(
        FetchMessageInMinuteDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
