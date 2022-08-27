import 'package:flutter/material.dart';
import 'package:ui/screens/catalogue/list_card.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Catalogue',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.all(
                  8.0,
                ),
                child: Text(
                  'Products',
                ),
              ),
              Text(
                'Categories',
              ),
            ],
          ),
        ),
        body: const Cardlist(),
      ),
    );
  }
}
