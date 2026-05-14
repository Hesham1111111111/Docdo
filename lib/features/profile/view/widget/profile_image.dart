import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140,
      left: 0,
      right: 0,

      child: Center(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(5),

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),

              child: const CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffD9CFFD),

                backgroundImage: NetworkImage(
                  'https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png',
                ),
              ),
            ),

            Positioned(
              right: 0,
              bottom: 10,

              child: Container(
                padding: const EdgeInsets.all(6),

                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue),
                ),

                child: const Icon(Icons.link, size: 18, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
