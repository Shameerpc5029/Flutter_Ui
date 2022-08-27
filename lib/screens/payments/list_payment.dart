import 'package:flutter/material.dart';

List<String> listitems = [
  '#1688068',
  '#1454068',
  '#1434068',
  '#1385068',
  '#1385068',
  '#1688068',
  '#1454068',
  '#1434068',
  '#1385068',
  '#1385068',
  '#1688068',
  '#1454068',
  '#1434068',
  '#1385068',
  '#1385068',
  '#1385068',
];

List<String> subtititems = [
  'jul 12, 02:06 PM',
  'Apr 26, 07:47 AM',
  'Apr 11, 10:54 AM',
  'Apr 2, 11:29 AM',
  'Apr 1, 10:37 AM',
  'jul 12, 02:06 PM',
  'Apr 26, 07:47 AM',
  'Apr 11, 10:54 AM',
  'Apr 2, 11:29 AM',
  'Apr 1, 10:37 AM',
  'jul 12, 02:06 PM',
  'Apr 26, 07:47 AM',
  'Apr 11, 10:54 AM',
  'Apr 2, 11:29 AM',
  'Apr 1, 10:37 AM',
  'jul 12, 02:06 PM',
];

List<String> trailing = [
  '₹799',
  '₹400',
  '₹634',
  '₹423',
  '₹556',
  '₹799',
  '₹400',
  '₹634',
  '₹423',
  '₹556',
  '₹799',
  '₹400',
  '₹634',
  '₹423',
  '₹556',
  '₹400',
];
List image = [
  'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80',
  'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
  'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
  'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
  'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
  'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
  'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80',
  'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
  'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
  'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
  'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
  'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
  'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
  'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
];

class ListPayment extends StatelessWidget {
  const ListPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final item = listitems[index];
        final subitem = subtititems[index];
        final trail = trailing[index];

        return ListTile(
          title: Text(
            'Order$item',
          ),
          subtitle: Text(
            subitem,
          ),
          leading: CircleAvatar(
            radius: 50,
            child: Image(
              image: NetworkImage(image[index]),
            ),
          ),
          trailing: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 55,
                ),
                child: Column(
                  children: [
                    Text(
                      trail,
                      style: const TextStyle(
                        color: Color.fromARGB(
                          255,
                          38,
                          111,
                          171,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.circle,
                      size: 15,
                      color: Colors.green,
                    )),
                    TextSpan(
                      text: 'Successfull',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: listitems.length,
      separatorBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${trailing[index]}deposited to:S88602000000138',
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
