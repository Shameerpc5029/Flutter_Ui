import 'package:flutter/material.dart';
import 'package:ui/screens/dukaanPremium/dukaan_card.dart';
import 'package:ui/screens/dukaanPremium/expanded_tile.dart';
import 'package:ui/screens/dukaanPremium/features.dart';
import 'package:ui/screens/dukaanPremium/help_card.dart';
import 'package:ui/screens/dukaanPremium/youtube_player.dart';
import 'package:ui/screens/order/order_screen.dart';

class DukaanScreen extends StatelessWidget {
  const DukaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Dukaan Premium',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (
                    BuildContext ctx,
                  ) {
                    return const OrderScreen();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 100,
                  ),
                ],
              ),
              Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 370,
                      height: 200,
                      child: DukaanPremiumCard(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Features',
              style: style,
            ),
          ),
          const Features(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text(
              'What is Dukaan Premium?',
              style: style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: SizedBox(
              height: 200,
              width: 370,
              child: Card(
                elevation: 3,
                child: Youtube(),
              ),
            ),
          ),
          const Divider(
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text(
              'Frequently asked questions',
              style: style,
            ),
          ),
          const Tile(),
          const Divider(
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text(
              'Need help? Get in touch',
              style: style,
            ),
          ),
          const HelpCard(),
        ],
      ),
    );
  }
}
