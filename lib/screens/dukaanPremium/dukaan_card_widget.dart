import 'package:flutter/material.dart';

class DukaanCard extends StatelessWidget {
  const DukaanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SizedBox(
        child: GridTile(
          footer: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Marketing Designs',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(1),
                child: Icon(
                  Icons.speaker,
                  color: Colors.orange,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
