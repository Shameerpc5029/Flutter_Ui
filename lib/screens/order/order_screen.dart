import 'package:flutter/material.dart';
import 'package:ui/screens/catalogue/catalogue_screen.dart';
import 'package:ui/screens/order/additional_info.dart';
import 'package:ui/screens/order/customers_det.dart';

import 'package:ui/screens/order/deliverd.dart';
import 'package:ui/screens/order/item_total.dart';
import 'package:ui/screens/order/receipt.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Divider divider = const Divider(
      thickness: 1,
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        title: const Text('Order #1688068'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext ctx) {
                    return const CatalogueScreen();
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
          Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              children: [
                const DeliverdSect(),
                divider,
                const ReceiptSct(),
                divider,
                const ItemTotal(),
                divider,
                const CustomerDetails(),
                divider,
                const AdditionaInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
