import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset("logo.png"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Cadastrar",
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: const Text("Entrar"),
          ),
        ),
      ],
    );
  }
}
