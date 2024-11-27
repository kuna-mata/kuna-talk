import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
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

  Message({
    required this.senderId,
    required this.receiverId,
    required this.messageId,
    required this.message,
    required this.updatedAt,
    required this.createdAt,
  });

  /// Connect the generated [_$MessageFromJson] function to the `fromJson`
  /// factory.
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  /// Connect the generated [_$MessageToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

// dart run build_runner build
