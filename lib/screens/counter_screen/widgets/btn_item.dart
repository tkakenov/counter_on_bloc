import 'package:flutter/material.dart';

class BtnItem extends StatelessWidget {
  final Icon icon;
  final Function() onPress;
  const BtnItem({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(80, 80),
          elevation: 8,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onPress,
        child: icon);
  }
}
