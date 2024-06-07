import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final IconData? btnIcon;

  const RoundedButton({super.key, this.btnIcon, required this.btnName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {},
        child:  Row(
          children: [
             Icon(btnIcon),
            Text(btnName),
          ],
        )
    );
  }
}
