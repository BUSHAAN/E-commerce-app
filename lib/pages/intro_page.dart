import 'package:e_commerce_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 5),
            //logo
            Icon(
              Icons.shopping_cart,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            //title
            Text(
              'StashIt ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            //subtitle
            Text(
              'Shop smarter, shop faster.',
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const Spacer(flex: 4),

            //button
            MyButton(onTap: () {
              Navigator.pushNamed(context, '/shop_page');}),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
