import 'package:flutter/material.dart';

class GridViewBilder extends StatelessWidget {
  const GridViewBilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List icons = [
      Icons.campaign,
      Icons.currency_rupee_outlined,
      Icons.percent_sharp,
      Icons.group_rounded,
      Icons.qr_code,
      Icons.currency_rupee_rounded,
      Icons.format_align_left_outlined,
    ];
    List iconsColor = [
      Colors.orange[900],
      Colors.green,
      Colors.yellow[700],
      const Color.fromARGB(255, 15, 141, 107),
      Colors.grey,
      const Color.fromARGB(255, 91, 6, 210),
      const Color.fromARGB(255, 162, 35, 105)
    ];
    List cardText = [
      'Marketing Designs',
      'Online Payments',
      'Discount Coupons',
      '''My
Customers''',
      '''Store Qr 
Code ''',
      '''Extra
Chanrges''',
      '''Order
Form'''
    ];
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120,
            mainAxisSpacing: 10,
            // childAspectRatio: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: 7,
          itemBuilder: (BuildContext context, index) {
            return Card(
              elevation: 1,
              child: SizedBox(
                child: GridTile(
                  footer: Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Text(
                      cardText[index],
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 5,
                        ),
                        child: Icon(
                          icons[index],
                          color: iconsColor[index],
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
