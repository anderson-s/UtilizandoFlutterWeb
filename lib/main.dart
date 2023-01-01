import 'package:flutter/material.dart';
import 'package:flutter_web_teste/reponsividade_media_query.dart';
import 'package:flutter_web_teste/responsividade_layout_builder.dart';
import 'package:flutter_web_teste/responsividade_orientation_builder.dart';
import 'package:flutter_web_teste/responsividade_row_col.dart';
import 'package:flutter_web_teste/responsividade_wrap.dart';

void main() {
  runApp(const Pagina());
}

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Home(),
      // home: Responsividade(),
      // home: ResponsividadeWraper(),
      // home: ResponsividadeOrientationBuilder(),
      home: ResponsividadelayoutBuilder(),
      title: "Flutter Web",
      debugShowCheckedModeBanner: false,
    );
  }
}
