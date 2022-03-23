import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'home': Icons.home,
  'perfil': Icons.accessibility,
  'message': Icons.message,
  'coupon': Icons.donut_large,
  'order': Icons.input,
  'payment': Icons.list,
  'languaje': Icons.language,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.black);
}
