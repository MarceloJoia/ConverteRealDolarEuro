import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request =
    "https://api.hgbrasil.com/finance?format=json-cors&key=6aa866e2";

void main() async {
  //http.Response response = await http.get(Uri.parse(request));
  //print(json.decode(response.body)["results"]["currencies"]);
  print(await getData());

  runApp(MaterialApp(
    home: Container(),
  ));
}

// função que retorna um dado futuro
Future<Map> getData() async {
  http.Response response =
      await http.get(Uri.parse(request)); //Retorna um dadono futuro
  // Converter em [MAP]: json.decode(...)
  return json.decode(response.body)["results"]["currencies"];
}
