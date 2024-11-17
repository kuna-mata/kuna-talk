// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMessageDto _$CreateMessageDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'senderId',
      'receiverId',
      'messageId',
      'message',
      'createdAt',
      'updatedAt'
    ],
  );
  return CreateMessageDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    messageId: json['messageId'] as String,
    message: json['message'] as String,
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$CreateMessageDtoToJson(CreateMessageDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'messageId': instance.messageId,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
