import '/model/response/DataResponse.dart';

class IncidentResponse {
  int success = 0;
  String message = "";
  String token = "";
  DataResponse data = DataResponse();

  IncidentResponse();
  IncidentResponse.fromMap(Map<String, dynamic> map) {
    success = map['success'];
    message = map['message'];
    token = map['token'];

    if(map['data'] != null) {
      data = DataResponse.fromMap(map['data']);
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
      'token': token,
      'data': data
    };
  }
}