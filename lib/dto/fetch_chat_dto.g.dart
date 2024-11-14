// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchChatDto _$FetchChatDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['senderId', 'receiverId', 'createdAt'],
  );
  return FetchChatDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$FetchChatDtoToJson(FetchChatDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
