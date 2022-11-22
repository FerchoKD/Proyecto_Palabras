import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedad
  int a = 0;
  List<String> counter = ['hola', 'soy', 'Fernando', 'daniel', 'perez'];

  void increase() {
    if (a >= 4) {
      a = -1;
    } else {
      a++;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);
    //variables
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cambio de palabras')),
        backgroundColor: const Color.fromARGB(255, 163, 255, 59),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 20,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter[a],
              style: fontsize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(increaseFn: increase),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            elevation: 50.0,
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            backgroundColor: const Color.fromARGB(255, 163, 255, 59),
            hoverColor: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () => increaseFn(),
            child: const Icon(
              Icons.exposure_plus_1,
            ),
          ),
        ],
      ),
    );
  }
}
