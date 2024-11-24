// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_all_messages.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchAllMessagesDto _$FetchAllMessagesDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['senderId', 'receiverId'],
  );
  return FetchAllMessagesDto(
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
  );
}

Map<String, dynamic> _$FetchAllMessagesDtoToJson(
        FetchAllMessagesDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
    };
