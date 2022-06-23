// import 'package:flutter/material.dart';
import 'package:wipressing/screens/login_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';
import './screens/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await windowManager.ensureInitialized();

windowManager.waitUntilReadyToShow().then((value) async{
  await windowManager.setTitle('Benediction');
  await windowManager.setTitleBarStyle(TitleBarStyle.normal);
  await windowManager.setBackgroundColor(Colors.transparent);
  await windowManager.setSize(const Size(755, 545));
  await windowManager.setMinimumSize(const Size(755, 545));
  await windowManager.show();
  await windowManager.center();
  await windowManager.setSkipTaskbar(false);
});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light, accentColor: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark, accentColor: Colors.blue),
      home: LoginPage(),
      routes: {
        MyHomePage.routeName:(context) => MyHomePage() 
      },
    );
  }
}

