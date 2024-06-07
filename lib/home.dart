import 'package:app_practice/widgets/roundedButton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text(
              "Astrotalk",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.wallet_membership_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 20,),
          Icon(
            Icons.language,
            color: Colors.black,
          ),
          SizedBox(width: 20,),
          Icon(
            Icons.person,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                height: 30,
                width: MediaQuery.sizeOf(context).width,
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search astrologers,astromall products",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 120,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/horo.jpeg"),
                        radius: 32,
                      ),
                      Text(
                        "Daily",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        "Horoscope",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/free.jpeg"),
                        radius: 32,
                      ),
                      Text(
                        "Free",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        "Kundali",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/kundalmatc.jpeg"),
                        radius: 32,
                      ),
                      Text(
                        "Kundali",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        "Matching",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/blog.jpeg"),
                        radius: 32,
                      ),
                      Text(
                        "Astrology",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        "Blog",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    "assets/images/archana.webp",
                    height: 140,
                    width: 160,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Archana Puran Singh loves us!",
                      style: TextStyle(fontSize: 10),
                    ),
                    const Text(
                      "Chat with Astrologer",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 20,
                        width: 110,
                        decoration: const ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.black,
                        ),
                        child: const Center(
                            child: Text(
                          "Chat Now",
                          style: TextStyle(color: Colors.white),
                        ))),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 240,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Live Astrologers",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.pink,
                              ),
                              height: 160,
                              width: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/archana.webp"),
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.green,
                                ),
                                height: 160,
                                width: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.yellowAccent,
                                height: 160,
                                width: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.blueAccent,
                                height: 160,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const RoundedButton(btnName: 'Please call',),
          const RoundedButton(btnName: "Yes I am Calling",btnIcon: Icons.call,),
        ],
      ),
    );
  }
}
