import 'package:dio/dio.dart';

import 'package:kuna_talk/api/config.dart';
import 'package:kuna_talk/dto/create_message_dto.dart';

final Dio dio = DioClient().dio;

Future<Response> createMessage(CreateMessageDto data) async {
  try {
    Response response = await dio.post('/chat', data: data);

    print('success');
    print(response.data);
    return response;
  } catch (e) {
    return Future.error(e);
  }
}
