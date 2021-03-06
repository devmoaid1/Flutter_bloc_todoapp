import 'dart:convert';
import 'package:http/http.dart' as http;

class DataService {
  static final DataService _instance = DataService._constructor();
  factory DataService() {
    return _instance;
  }

  DataService._constructor();

  Uri baseUrl(String endPoint) =>
      Uri.parse("http://192.168.1.38:3000/$endPoint");

  // Change the IP address to your PC's IP. Remain the port number 3000 unchanged.

  Future get(String endpoint) async {
    final response = await http
        .get(baseUrl(endpoint), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future post(String endpoint, {dynamic data}) async {
    final response = await http.post(baseUrl(endpoint),
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future patch(String endpoint, {dynamic data}) async {
    final response = await http.patch(baseUrl(endpoint),
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future delete(String endpoint) async {
    final response = await http.delete(
      baseUrl(endpoint),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }
}
