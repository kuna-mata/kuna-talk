import 'package:json_annotation/json_annotation.dart';

part 'create_message_dto.g.dart';

@JsonSerializable()
class CreateMessageDto {
  @JsonKey(required: true)
  final String senderId;

  @JsonKey(required: true)
  final String receiverId;

  @JsonKey(required: true)
  final String messageId;

  @JsonKey(required: true)
  final String message;

  @JsonKey(required: true)
  final DateTime createdAt;

  @JsonKey(required: true)
  final DateTime updatedAt;

  CreateMessageDto({
    required this.senderId,
    required this.receiverId,
    required this.messageId,
    required this.message,
    required this.updatedAt,
    required this.createdAt,
  });

  /// Connect the generated [_$CreateMessageDtoFromJson] function to the `fromJson`
  /// factory.
  factory CreateMessageDto.fromJson(Map<String, dynamic> json) =>
      _$CreateMessageDtoFromJson(json);

  /// Connect the generated [_$CreateMessageDtoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CreateMessageDtoToJson(this);
}

// dart run build_runner build
