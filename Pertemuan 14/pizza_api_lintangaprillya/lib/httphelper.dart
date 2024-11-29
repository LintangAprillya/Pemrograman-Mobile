import 'dart:convert';
import 'package:http/http.dart' as http;
import 'pizza.dart';

class HttpHelper {
  final String authority = 'app.wiremock.cloud';
  final String path = 'j6rqq.wiremockapi.cloud';

  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);

    if (result.statusCode == 200) {
      // Parse JSON response
      final List<dynamic> jsonResponse = json.decode(result.body);
      return jsonResponse.map<Pizza>((item) => Pizza.fromJson(item)).toList();
    } else {
      // Return empty list if the request fails
      return [];
    }
  }
}
