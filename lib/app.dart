import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/counter.dart';
import 'package:flutter_mvc/screens/home.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        // home: ChangeNotifierProvider(
        //   create: (context) => CounterController(),
        //   child: MyHomePage(title: 'Flutter Demo Home Page'),
        // ),
      ),
    );
  }
}
