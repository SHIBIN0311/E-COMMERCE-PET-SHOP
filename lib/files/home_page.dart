import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/core/sizedbox.dart';
import 'package:e_commerce_app/custom/item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: kBrown,
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18.0, right: 18.0, top: 25.0, bottom: 25.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.ac_unit_outlined,
                          color: kWhiteShade,
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: kWhiteShade,
                        ),
                        kWidth10,
                        Icon(
                          Icons.notification_important_outlined,
                          color: kWhiteShade,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: kDeepPurple,
                    ),
                    title: Text('Ontario (CA)',
                        style: TextStyle(
                          color: kWhiteShade,
                        )),
                    subtitle: Text(
                      'Hi, Alex Harper',
                      style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            kHeight10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            kHeight10,
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: kWhiteButton, borderRadius: BorderRadius.circular(12)),
              child: MaterialButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'More',
                      style: TextStyle(fontSize: 25),
                    ),
                    kWidth10,
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            ),
            kHeight20,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ready to Adopt',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
                    mainAxisExtent: 275,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const ItemCard();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
