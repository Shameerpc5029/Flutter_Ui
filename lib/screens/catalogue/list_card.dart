import 'package:flutter/material.dart';
import 'package:ui/screens/aditional%20information/switch.dart';

class Cardlist extends StatelessWidget {
  const Cardlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List img = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYG3MvEw_qXKodDjqHRraCQ8mDBY0JfMzf7xnugZ_R&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaYu0WorWjMxMeE7T9Vi-U23Wtxi938aUFOGhncjGv&s',
      'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
      'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
    ];
    List text = [
      'Couch Potato | Men ',
      'Couch Potato | Men ',
      'Mug ',
      'Nike Shoe',
    ];
    List price = [
      '₹799',
      '₹699',
      '₹299',
      '₹999',
    ];
    return ListView.builder(
      itemCount: img.length,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  leading: Image(
                    image: NetworkImage(
                      img[index],
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text[index]),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '1 piece',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        price[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'In stock',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // Icon(
                          //   Icons.toggle_on,
                          //   color: Colors.blue,
                          //   size: 40,
                          // ),
                          SwitchBt(),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Share Product',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
