import 'package:covid19/screens/feature_card.dart';
import 'package:covid19/widgets/symptomchecker_card.dart';
import 'package:covid19/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nakuru, Kenya",
              style: textStyle(
                20,
                Colors.white,
                FontWeight.w600,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cover.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.only(right: 50),
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "6783",
                          style: textStyle(
                            50,
                            Colors.white,
                            FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Total Cases",
                          style: textStyle(
                            20,
                            Colors.white,
                            FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 50,
                          horizontal: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: symptomCheckerCard(context),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FeatureCard(
                            imageName: "asset/image1.png",
                            title: "Map",
                          ),
                          FeatureCard(
                            imageName: "asset/image2.png",
                            title: "Symptoms",
                          ),
                          FeatureCard(
                            imageName: "asset/image3.png",
                            title: "Prevention",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FeatureCard(
                            imageName: "asset/image4.png",
                            title: "News",
                          ),
                          FeatureCard(
                            imageName: "asset/image5.png",
                            title: "FAQs",
                          ),
                          FeatureCard(
                            imageName: "asset/image6.png",
                            title: "About",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
