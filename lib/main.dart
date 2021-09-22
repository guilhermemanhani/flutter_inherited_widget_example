import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/model/home/home_page.dart';
import 'package:flutter_inherited_widget_example/model/splash/splash_page.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UserModel(
      birthData: '02/08/1991',
      name: 'Guilherme Manhani',
      imgAvatar:
          'https://cdn.ome.lt/_1KF0rLSFPxVwCR-u5XA6Mc-k4E=/1200x630/smart/extras/conteudos/goku3.jpg',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
