import 'package:e_commerce_app/core/colors.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kDeepPurple,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://i.pinimg.com/originals/9b/a0/0a/9ba00abaa2b1e5ee5125744749f2a728.jpg',
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: kWhite,
                      child: Icon(
                        Icons.favorite_rounded,
                        size: 19,
                        color: kGrey,
                      ),
                    ))
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(4.0),
            //   child: Container(
            //     height: 88,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: kWhite, borderRadius: BorderRadius.circular(20.0)),
            //     child: const ListTile(
            //       title: Text(
            //         'Cooper',
            //         style: TextStyle(fontWeight: FontWeight.bold),
            //       ),
            //       subtitle: Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Icon(
            //             Icons.location_on_outlined,
            //             size: 18,
            //           ),
            //           Text(
            //             '2464 Royal Ln, Mesa, CA',
            //           ),
            //         ],
            //       ),
            //       trailing: Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text(
            //             'M',
            //             style: TextStyle(fontSize: 15),
            //           ),
            //           Icon(
            //             Icons.calendar_month_outlined,
            //             size: 15,
            //           ),
            //           Text(
            //             '2yr',
            //             style: TextStyle(fontSize: 15),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
