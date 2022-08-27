import 'package:flutter/material.dart';

class AdditionaInfo extends StatelessWidget {
  const AdditionaInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'ADDITIONAL IFORMATION',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'State',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Karnataka',
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'greeniceaqua@gmail.com',
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
          style: ButtonStyle(
          
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                
              ),
            ),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 110.0, right: 110),
            child: Text(
              'Share receipt',
            ),
          ),
        ),
      ],
    );
  }
}
