import 'package:flutter/material.dart';

class DeliverdSect extends StatelessWidget {
  const DeliverdSect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text('May 31,05:42 PM'),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.circle,
              size: 14,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Delivered',
            ),
          ],
        ),
      ],
    );
  }
}
