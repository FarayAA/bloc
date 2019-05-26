import 'package:flutter/material.dart';
import 'Counter_bloc.dart';
import 'Counter_provider.dart';

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  @override
  void dispose(){
    bloc.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: bloc.getCount, //menghitung jumlah bloc
      initialData: CounterProvider().count, //menghitung jumlah counterprovider
      builder: (context, snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have push this button this many"),
            Text("${snapshot.data}", //menampilkan data
            style: Theme.of(context).textTheme.display1,)
          ],
        ),
      ),
    );
  }
}