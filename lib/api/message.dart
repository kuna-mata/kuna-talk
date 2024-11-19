import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:kuna_talk/api/config.dart';
import 'package:kuna_talk/dto/create_message_dto.dart';
import 'package:kuna_talk/models/message.dart';

final Dio dio = DioClient().dio;

Future<Message> createMessage(CreateMessageDto data) async {
  try {
    final response = await dio.post('/chat', data: data);
    final result = Message.fromJson(response.data);

    if (response.statusCode == 201) {
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
