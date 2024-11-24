import 'package:json_annotation/json_annotation.dart';

part 'fetch_message_dto.g.dart';

@JsonSerializable()
class FetchMessageDto {
  @JsonKey(required: true)
  final String senderId;

  @JsonKey(required: true)
  final String receiverId;

  @JsonKey(required: true)
  final DateTime createdAt;

  FetchMessageDto({
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });

  /// Connect the generated [_$FetchMessageDtoFromJson] function to the `fromJson`
  /// factory.
  factory FetchMessageDto.fromJson(Map<String, dynamic> json) =>
      _$FetchMessageDtoFromJson(json);

  /// Connect the generated [_$FetchMessageDtoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FetchMessageDtoToJson(this);
}

// dart run build_runner build
