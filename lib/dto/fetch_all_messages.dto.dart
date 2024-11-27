import 'package:json_annotation/json_annotation.dart';

part 'fetch_all_messages.dto.g.dart';

@JsonSerializable()
class FetchAllMessagesDto {
  @JsonKey(required: true)
  final String senderId;

  @JsonKey(required: true)
  final String receiverId;

  FetchAllMessagesDto({
    required this.senderId,
    required this.receiverId,
  });

  /// Connect the generated [_$FetchAllMessagesDtoFromJson] function to the `fromJson`
  /// factory.
  factory FetchAllMessagesDto.fromJson(Map<String, dynamic> json) =>
      _$FetchAllMessagesDtoFromJson(json);

  /// Connect the generated [_$FetchAllMessagesDtoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FetchAllMessagesDtoToJson(this);
}

// dart run build_runner build
