import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/twoPage', arguments: 'teste')
                    .then((value) => print(value));
              },
              child: const Text('Ir para a Segunda page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/threePage')
                    .then((value) => print(value));
              },
              child: const Text('Ir para a terceira page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/fourPage')
                    .then((value) => print(value));
              },
              child: const Text('Ir para a quarta page'),
            ),
          ],
        ),
      ),
    );
  }
}
