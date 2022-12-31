import 'package:flutter/material.dart';

class ResponsividadeOrientationBuilder extends StatefulWidget {
  const ResponsividadeOrientationBuilder({super.key});

  @override
  State<ResponsividadeOrientationBuilder> createState() =>
      _ResponsividadeOrientationBuilderState();
}

class _ResponsividadeOrientationBuilderState
    extends State<ResponsividadeOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientação"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        //Monitora a orientação do celular
        builder: (context, orientation) {
          // return Container(
          //   child: orientation == Orientation.portrait
          //       ? Text("portrait")
          //       : Text("landscape"),
          // );
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            children: [
              Container(  
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.brown,
              ),
              Container(
                color: Colors.blue,
              ),
               Container(
                color: Colors.orange,
              ),
               Container(
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
