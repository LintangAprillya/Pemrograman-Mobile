import 'dart:convert'; // Untuk json.decode dan json.encode
import 'dart:io'; // Untuk HttpStatus
import 'package:http/http.dart' as http;
import 'pizza.dart'; // Pastikan import pizza.dart dengan benar

class HttpHelper {
  final String authority = 'j6rqq.wiremockapi.cloud';
  final String path = 'pizzalist';

  // Mendapatkan daftar pizza
  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body) as List;
      List<Pizza> pizzas =
          jsonResponse.map<Pizza>((i) => Pizza.fromJson(i)).toList();
      return pizzas;
    } else {
      return [];
    }
  }

  // Mengirimkan pizza ke server menggunakan POST
  Future<String> postPizza(Pizza pizza) async {
    const postPath = '/pizza';
    String post = json.encode(pizza.toJson()); // Mengubah pizza menjadi JSON
    Uri url = Uri.https(authority, postPath);

    http.Response r = await http.post(
      url,
      headers: {'Content-Type': 'application/json'}, // Menambahkan header
      body: post, // Mengirim body berupa JSON
    );
    return r.body; // Mengembalikan respons dari server
  }
}
