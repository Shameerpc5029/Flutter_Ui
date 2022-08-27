import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CardTransation extends StatelessWidget {
  const CardTransation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget devider = const SizedBox(
      height: 10,
    );
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transation Limit',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            devider,
            const Text(
              '''A free limit up to which you will receive
the online payments Directly in your bank  ''',
              style: TextStyle(
                color: Color.fromARGB(
                  255,
                  140,
                  135,
                  135,
                ),
              ),
            ),
            devider,
            const StepProgressIndicator(
              totalSteps: 100,
              currentStep: 35,
              size: 8,
              padding: 0,
              roundedEdges: Radius.circular(
                10,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '36,668 left out of ₹50,000',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Increase limit',
              ),
            )
          ],
        ),
      ),
    );
  }
}
