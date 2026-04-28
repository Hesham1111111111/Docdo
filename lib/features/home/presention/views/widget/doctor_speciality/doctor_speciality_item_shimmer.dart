import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DoctorSpecialityShimmerList extends StatelessWidget {
  const DoctorSpecialityShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return const DoctorSpecialityShimmerItem();
        },
      ),
    );
  }
}

class DoctorSpecialityShimmerItem extends StatelessWidget {
  const DoctorSpecialityShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 50,
            height: 10,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}