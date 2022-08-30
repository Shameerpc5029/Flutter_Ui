import 'package:flutter/material.dart';
import 'package:ui/screens/aditional%20information/switch.dart';

import 'package:ui/screens/manageStore/manage_store_screen.dart';

class AdditionScreen extends StatelessWidget {
  const AdditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List icons = [
      Icons.share,
      Icons.language,
      Icons.whatsapp,
      Icons.lock_outline,
      Icons.star_border,
      Icons.logout,
    ];
    List text = [
      'Share Dukaan App',
      'Change Language',
      'WhatsApp Chat Support',
      'Privacy Policy',
      'Rate Us',
      'Sign Out',
    ];

    List<dynamic> trailingIcon = [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
      const SwitchBt(),
      null,
      null,
      null,
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Additional Information',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (
                    BuildContext ctx,
                  ) {
                    return const ManageScreen();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: icons.length,
        itemBuilder: (
          context,
          index,
        ) =>
            ListTile(
          leading: Icon(
            icons[index],
          ),
          title: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  text[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          // title: Text(
          //   text[index],
          // ),
          trailing: trailingIcon[index],
        ),
      ),
    );
  }
}
