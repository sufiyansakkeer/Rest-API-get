import 'package:flutter/material.dart';
import 'package:rest_api/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}


//?  added json_serializable,  json_annotation ,http,build runner(dev dependencies) packages 
//?  using json  to dart plugin we made a model for the json structure ,
//? using that model i converted the json into dataStructure  ,
// ? we generate .g.dart file using build runner ?