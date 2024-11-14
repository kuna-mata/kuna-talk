import 'package:json_annotation/json_annotation.dart';

part 'fetch_chat_dto.g.dart';

@JsonSerializable()
class FetchChatDto {
  @JsonKey(required: true)
  final String senderId;

  @JsonKey(required: true)
  final String receiverId;

  @JsonKey(required: true)
  final DateTime createdAt;

  FetchChatDto({
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });

  /// Connect the generated [_$FetchChatDtoFromJson] function to the `fromJson`
  /// factory.
  factory FetchChatDto.fromJson(Map<String, dynamic> json) =>
      _$FetchChatDtoFromJson(json);

  /// Connect the generated [_$FetchChatDtoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FetchChatDtoToJson(this);
}

// flutter run build_runner build
