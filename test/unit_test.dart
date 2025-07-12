

import 'package:flutter_test/flutter_test.dart';
import 'package:testing_example/models/counter.dart';

void main(){
  test('Increment method test', (){
    //setup
    final Counter counter = Counter(value: 1);
    //do
    counter.increment();
    //test
    expect(counter.value, 2);
  });
  test('Decrement method test', (){
    //setup
    final Counter counter = Counter(value: 6);
    //do
    counter.decrement();
    counter.decrement();
    //test
    expect(counter.value, 4);
  });
}