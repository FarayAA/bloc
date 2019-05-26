import 'dart:async';
import 'Counter_provider.dart';

class CounterBloc{
  final counterController = StreamController(); //membuat sebuah stream controller
  final CounterProvider provider = CounterProvider(); //membuat sebuah counterprovider
  Stream get getCount => counterController.stream;
  void updateCount(){
    provider.increaseCount();
    counterController.sink.add(provider.count); //menambahkan provider ke dalam counterController
  }
  void dispose(){
    counterController.close(); //menutup countercontroller ketika tidak digunakan
  }
}
final bloc = CounterBloc(); //menjadikan class CounterBloc sebagai sebuah object agar bisa di gunakan pada class lain