// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchMessageDto _$FetchMessageDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['senderId', 'receiverId', 'createdAt'],
  );
  return FetchMessageDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$FetchMessageDtoToJson(FetchMessageDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
