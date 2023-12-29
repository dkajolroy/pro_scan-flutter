import 'package:flutter/material.dart';

class BoardingTile extends StatelessWidget {
  final String headingText;
  final String image;
  final String description;
  const BoardingTile(
      {super.key,
      required this.description,
      required this.image,
      required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            headingText,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 25, height: 1.5, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
