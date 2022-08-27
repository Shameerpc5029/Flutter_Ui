import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> featureLst = [
      'Custom domain name',
      'Verified seller badge',
      'Dukaan for PC',
      'Custom domain name',
    ];

    List<String> featureSub = [
      'Get your own custom domain and build your brand on the internet.',
      'Get green verified badge under your store name and build trust.',
      'Access all the exclusive premium features on Dukaan for PC.',
      'Get your questions resolved with our priority  custom support',
    ];

    List icnLst = const [
      Icon(
        Icons.language_outlined,
        color: Colors.blue,
      ),
      Icon(
        Icons.verified_outlined,
        color: Colors.blue,
      ),
      Icon(
        Icons.computer_outlined,
        color: Colors.blue,
      ),
      Icon(
        Icons.headphones_outlined,
        color: Colors.blue,
      ),
    ];
    return ListView.builder(
      itemCount: featureLst.length,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (
        context,
        index,
      ) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: icnLst[index],
          ),
          title: Text(
            featureLst[index],
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            featureSub[index],
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}
