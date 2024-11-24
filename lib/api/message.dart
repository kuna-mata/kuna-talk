import 'package:dio/dio.dart';

import 'package:kuna_talk/api/config.dart';
import 'package:kuna_talk/dto/create_message_dto.dart';
import 'package:kuna_talk/dto/fetch_all_messages.dto.dart';
import 'package:kuna_talk/dto/fetch_messages_in_minute_dto.dart';
import 'package:kuna_talk/models/message.dart';

final Dio dio = DioClient().dio;

Future<Message> createMessage(CreateMessageDto data) async {
  try {
    final response = await dio.post('/chat', data: data);
    final result = Message.fromJson(response.data);

    if (response.statusCode == 201) {
      print('createMessage: $result');

      return result;
    } else {
      print('Failed to send message');
      throw Exception(
          'createMessage API error ${response.statusCode} ${response.statusMessage}');
    }
  } catch (e) {
    throw Exception('createMessage API error: $e');
  }
}

Future<List<Message>> fetchAllMessages(FetchAllMessagesDto data) async {
  try {
    final response = await dio.get('/chat', queryParameters: {
      'senderId': data.senderId,
      'receiverId': data.receiverId,
    });

    final result =
        (response.data as List).map((json) => Message.fromJson(json)).toList();

    if (response.statusCode == 200) {
      print('fetchAllMessages: ${result[0].message}');
      return result;
    } else {
      print('Failed to send message');
      throw Exception(
          'createMessage API error ${response.statusCode} ${response.statusMessage}');
    }
  } catch (e) {
    throw Exception('createMessage API error: $e');
  }
}

Future<List<Message>> fetchMessagesInMinute(
    FetchMessageInMinuteDto data) async {
  try {
    final response = await dio.get('/chat/minute', queryParameters: {
      'senderId': data.senderId,
      'receiverId': data.receiverId,
      'createdAt': data.createdAt
    });

    final result =
        (response.data as List).map((json) => Message.fromJson(json)).toList();

    if (response.statusCode == 200) {
      print('fetchMessage: ${result[0].message}');
      return result;
    } else {
      print('Failed to send message');
      throw Exception(
          'createMessage API error ${response.statusCode} ${response.statusMessage}');
    }
  } catch (e) {
    throw Exception('createMessage API error: $e');
  }
}
