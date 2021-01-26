import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/counter.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var counterController = new CounterController();

  @override
  Widget build(BuildContext context) {
    // var counterProvider = Provider.of<CounterController>(context);
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressed',
            ),
            Consumer<CounterController>(
              builder: (context, controller, child) => Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //counterProvider.incrementCounter();
          // Provider.of<CounterController>(context, listen: false)
          //     .incrementCounter();
          context.read<CounterController>().incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
