import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/textStyle.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.imageName, required this.title});
  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(0.0, 3.0),
                  color: Colors.black12,
                ),
              ],
            ),
            child: SvgPicture.asset(
              imageName,
              height: 50.0,
              width: 50.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: textStyle(
              15,
              Colors.black,
              FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
