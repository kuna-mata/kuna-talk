import 'package:json_annotation/json_annotation.dart';

part 'fetch_messages_in_minute_dto.g.dart';

@JsonSerializable()
class FetchMessageInMinuteDto {
  @JsonKey(required: true)
  final String senderId;

  @JsonKey(required: true)
  final String receiverId;

  @JsonKey(required: true)
  final DateTime createdAt;

  FetchMessageInMinuteDto({
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });

  /// Connect the generated [_$FetchMessageInMinuteDtoFromJson] function to the `fromJson`
  /// factory.
  factory FetchMessageInMinuteDto.fromJson(Map<String, dynamic> json) =>
      _$FetchMessageInMinuteDtoFromJson(json);

  /// Connect the generated [_$FetchMessageInMinuteDtoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FetchMessageInMinuteDtoToJson(this);
}

// dart run build_runner build
