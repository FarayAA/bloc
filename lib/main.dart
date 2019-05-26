import 'package:flutter/material.dart';
import 'Counter.dart';
import 'Counter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Bloc Pattern',
      home: MyHomePage(
        title: 'Bloc Pattern',
      ),
      debugShowCheckedModeBanner: false, //untuk menonaktifkan banner debug pada aplikasi
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    bloc.updateCount(); //update data counter melalui bloc
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body: Counter(), //pada bagian body kita langsung memanggil class counter
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter, //pada saat di tekan tombol + maka akan memanggil method _incrementCounter
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),

    );
  }
}
