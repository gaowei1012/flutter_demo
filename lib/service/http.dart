import 'dart:convert' as convent;
import 'package:http/http.dart' as http;

Future request(url) async {
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convent.jsonDecode(response.body);
    var title = jsonResponse['title'];
    print(title);
  } else {
    print("ERROR =====> RESPONSE FAILED");
  }
}