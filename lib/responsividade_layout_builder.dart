import 'package:flutter/material.dart';

class ResponsividadelayoutBuilder extends StatefulWidget {
  const ResponsividadelayoutBuilder({super.key});

  @override
  State<ResponsividadelayoutBuilder> createState() =>
      _ResponsividadelayoutBuilderState();
}

class _ResponsividadelayoutBuilderState
    extends State<ResponsividadelayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsividade Layout Builder"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //Com o Layout builder é possivel saber informações sobre o widget que irá ser ocupado e definir pontos/regras para telas especificas
        child: LayoutBuilder(
          builder: (context, regras) {
            var largura = regras.maxWidth;
            if (largura < 600) {
              return const Text("Celular");
            } else if (largura < 960) {
              return const Text("Celular e Tablet");
            } else {
              return const Text("Telas Maiores");
            }
          },
        ),
      ),
    );
  }
}
