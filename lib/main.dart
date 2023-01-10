import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

abstract class CanRun {
  void run() {
    'Running...'.log();
  }
}

class Cat with CanRun, CanWalk {}

abstract class CanWalk {
  void walk() {
    'Walking...'.log();
  }
}

void testIt() {
  final cat = Cat();
  cat
    ..run()
    ..walk();
  //cat.run();
  //cat.walk();
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    testIt();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
