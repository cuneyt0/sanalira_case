import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    required this.data,
    this.color,
    this.fontSize,
    this.fontWeight,
    Key? key,
  }) : super(key: key);
  final String? data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) => Text(
        data ?? '',
        style: TextStyle(
            color: color ?? Colors.black,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.w300),
      );
}
