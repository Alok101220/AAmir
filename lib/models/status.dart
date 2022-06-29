import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

// ignore: prefer_const_declarations
final url = "https://goquotes-api.herokuapp.com/api/v1/random?count=1";
// Future<Status> fetchStatus() async {
//   final response = await http.get(Uri.parse(url));
//   if (response.statusCode != null) {
//     return Status.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception("Failed to load Status :(");
//   }
// }

class Temp {
  String text;
  String author;
  Temp({required this.text, required this.author});

  factory Temp.fromMap(Map<String, dynamic> map) {
    return Temp(text: map["text"], author: map["author"]);
  }
  toMap() => {"text": text, "author": author};
  toList(){}
}
