import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Button tapped');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          'Proceed',
          style: TextStyle(
            color: Theme.of(context).colorScheme.background,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}