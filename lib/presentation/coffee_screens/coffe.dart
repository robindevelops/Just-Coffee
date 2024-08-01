import 'package:coffee_app/presentation/general_screens/detail_screen.dart';
import 'package:coffee_app/presentation/widgets/coffe_card.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 10 / 9,
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 110,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: DetailScreen(),
              ),
            );
          },
          child: CoffeeCard(),
        );
      },
    );
  }
}
