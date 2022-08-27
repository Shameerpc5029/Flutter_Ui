import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBox10 = const SizedBox(
      height: 10,
    );
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'CUSTOMER DETAILS',
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                    ),
                    label: const Text(
                      'SHARE',
                    ),
                  ),
                ],
              ),
            ],
          ),
          sizedBox10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Deepa',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '+91-7829000484',
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.phone,
                    size: 35,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.whatsapp,
                    size: 35,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'D 1101 Chartered Beverly',
                  ),
                  Text(
                    'Hill,Subramanyapura P.O',
                  ),
                ],
              ),
            ],
          ),
          sizedBox10,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'City',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text('Bangalore'),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Pincode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text('560061'),
                ],
              ),
            ],
          ),
          sizedBox10,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Online',
                          ),
                          const SizedBox(
                            width: 260,
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(
                                255,
                                211,
                                240,
                                177,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'PAID',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    39,
                                    183,
                                    44,
                                  ),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  sizedBox10,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
