import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.cardChild,
    required this.onPress,
  }) : super(key: key);

  final Widget cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(22),
          ),
          margin: const EdgeInsets.all(22),
          padding: const EdgeInsets.all(22),
          child: cardChild,
        ),
      ),
    );
  }
}
