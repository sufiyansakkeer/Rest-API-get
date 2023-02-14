//? by using as http in this import ,the import will known as http
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api/number_fact/number_fact.dart';

Future<NumberFact> getNumberFact({required int number}) async {
  //* here we use http get to know as we are using the get in the http ,
  // * using parse we will get the json from the url

  final response = await http.get(
    Uri.parse("http://numbersapi.com/$number?json"),
  );
  //? here response have 2 part's head and body , we are printing body only because that is what we want
  // print(response.body);
  //?  here we converting the json decode to map using 'as map'

  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
//? by using the function fromJson in the NumberFact ,it will convert json into object
  final body = NumberFact.fromJson(bodyAsJson);

  return body;
}
