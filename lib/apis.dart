//? by using as http in this import ,the import will known as http
import 'package:http/http.dart' as http;

Future<void> getNumberFact({required int number}) async {
  //* here we use http get to know as we are using the get in the http ,
  // * using parse we will get the json from the url

  final response = await http.get(
    Uri.parse("http://numbersapi.com/$number?json"),
  );
  //? here response have 2 part's head and body , we are printing body only because that is what we want
  print(response.body);
}
