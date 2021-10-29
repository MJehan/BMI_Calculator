import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICal());

class BMICal extends StatelessWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xFFffffff),
          scaffoldBackgroundColor: const Color(0xFFffffff),
        ),
      home: const InputPage(),
      debugShowCheckedModeBanner: false,
      );
    }
}

