import 'package:http/http.dart' as http;

fetchdata(String url) async {
  print("=======================");
  http.Response response = await http.get(Uri.parse(url));
  print(response.toString());
  print("=======================");
  return response.body;
}
