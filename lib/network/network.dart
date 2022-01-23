import 'dart:convert';

import 'package:crewbella_task/network/model/request_status.dart';
import 'package:crewbella_task/network/model/user.dart';
import 'package:http/http.dart' as http;

class NetworkConnection {
  static const _baseUrl = "py.crewbella.com";
  late final http.Client _httpClient;

  NetworkConnection({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<RequestStatus<User?>> getUserData() async {
    try {
      final uri = Uri.https(_baseUrl, '/user/api/profile/chiragbalani');
      final response = await _httpClient.get(uri);
      if (response.statusCode == 200) {
        return RequestStatus(RequestStatus.SUCCESS, "",
            User.fromJson(json.decode(response.body)));
      } else {
        return RequestStatus(
            RequestStatus.FAILURE,
            json.decode(response.body)['error_msg'] ?? "Something went wrong",
            null);
      }
    } catch (e) {
      return RequestStatus.SOMETHING_WENT_WRONG;
    }
  }
}
