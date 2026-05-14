import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  const WhiteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      bottom: 0,

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        decoration: const BoxDecoration(
          color: Color(0xffF5F5F5),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(35),
          ),
        ),

        child: Column(
          children: [
            const SizedBox(height: 60),

            const Text(
              'Omar Ahmed',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              'omarahmed14@gmail.com',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
            ),

            const SizedBox(height: 30),

            Container(
              height: 60,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),

              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'My Appointment',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  Container(width: 1, height: 30, color: Colors.grey.shade300),

                  Expanded(
                    child: Center(
                      child: Text(
                        'Medical records',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            profileTile(
              Icons.person_outline,
              Colors.blue,
              'Personal Information',
            ),

            profileTile(
              Icons.medical_services_outlined,
              Colors.green,
              'My Test & Diagnostic',
            ),

            profileTile(
              Icons.account_balance_wallet_outlined,
              Colors.red,
              'Payment',
            ),
          ],
        ),
      ),
    );
  }
}

Widget profileTile(IconData icon, Color color, String title) {
  return Container(
    margin: const EdgeInsets.only(bottom: 18),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),

    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
    ),

    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: color.withOpacity(.12),
            borderRadius: BorderRadius.circular(14),
          ),

          child: Icon(icon, color: color),
        ),

        const SizedBox(width: 15),

        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
