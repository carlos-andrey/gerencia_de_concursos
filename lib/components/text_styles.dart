import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'colors.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({super.key, required this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: cor_aprovado,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),
    );
  }
}

class CustomBodyText extends StatelessWidget {
  const CustomBodyText({super.key, required this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({super.key, required this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(

        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.normal,
        fontSize: 12
      ),
    );
  }
}