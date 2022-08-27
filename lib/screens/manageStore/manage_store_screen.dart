import 'package:flutter/material.dart';
import 'package:ui/screens/manageStore/bottom_nav.dart';
import 'package:ui/screens/manageStore/mange_gridview.dart';
import 'package:ui/screens/payments/payments_screen.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Store',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext ctx) {
                    return const PaymentsScreen();
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
      body: const GridViewBilder(),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
