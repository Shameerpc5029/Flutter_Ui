import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    );
    TextStyle style2 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black45,
    );
    Divider divider = const Divider(
      indent: 20,
      endIndent: 20,
      thickness: 2,
    );
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            'What types of businesses can use Dukaan Premium?',
            style: style1,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '''Dukaan caters to a wide variety of sellers . Be it a 
small grocery store ot a big legacy brand-anyone 
who wants to sell their products/services online - 
Dukaan is the perfect platform for you       ''',
                style: style2,
              ),
            ),
          ],
        ),
        divider,
        ExpansionTile(
          title: Text(
            'What is your refund policy?',
            style: style1,
          ),
        ),
        divider,
        ExpansionTile(
          title: Text(
            'Will there be an automatic change after the paid trial?',
            style: style1,
          ),
        ),
        divider,
        ExpansionTile(
          title: Text(
            'what payment methords do you offer?',
            style: style1,
          ),
        ),
        divider,
        ExpansionTile(
          title: Text(
            'What happens when my free trial ends?',
            style: style1,
          ),
        ),
        divider,
        ExpansionTile(
          title: Text(
            'What are the terms for the custom domain?',
            style: style1,
          ),
        ),
      ],
    );
  }
}
