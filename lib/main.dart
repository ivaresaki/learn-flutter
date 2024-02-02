import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: Home(),
      ),
    );

void onFloatingActionButtonPress() {
  if (kDebugMode) {
    print('button pressed');
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My App'),
        backgroundColor: Colors.red[600],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/space1.avif'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          onFloatingActionButtonPress();
        },
        child: const Text('click'),
      ),
    );
  }
}
