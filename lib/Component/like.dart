import 'package:flutter/material.dart';

class MyLike extends StatelessWidget {
  final String texxt;
  final IconData iconss;
  const MyLike({
    super.key,
    required this.texxt,
    required this.iconss,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(iconss),
        ),
        Text(texxt)
      ],
    );
  }
}
