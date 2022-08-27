import 'package:flutter/material.dart';

class ReceiptSct extends StatelessWidget {
  const ReceiptSct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  '1 ITEM',
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.receipt,
                  color: Colors.blue,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'RECEIPT',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const Image(
            image: AssetImage(
              'assets/image/img1.jpg',
            ),
          ),
          title: const Text(
            'Explore | Men | Black',
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '1 piece',
              ),
              const Text(
                'Size: XL',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          '1 X ₹799',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '₹799',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
