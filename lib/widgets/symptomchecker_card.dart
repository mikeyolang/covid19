import 'package:flutter/material.dart';

Container symptomCheckerCard(context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.grey[200],
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 10,
          offset: const Offset(0, 3),
        ),
      ]
    ),
    child: Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: (MediaQuery.of(context).size.width - 80) / 2,
          child: Image.asset(
            "assets/images/symptomchecker.png",
            fit: BoxFit.contain,
          ),
        ),
        Container(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Symptom Checker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Quicksand",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Check your symptoms and get advice on next steps.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
