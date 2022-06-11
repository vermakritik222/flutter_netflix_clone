import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const VerticalIconButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(height: 2.0),
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
