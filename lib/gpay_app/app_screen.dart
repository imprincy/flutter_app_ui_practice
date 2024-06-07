import 'dart:math';

import 'package:app_practice/gpay_app/gpay_model_view.dart';
import 'package:app_practice/gpay_app/gpay_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GpayScreen extends StatelessWidget {
  const GpayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return GpayViewModel();
      },
      child: Scaffold(
        body: Consumer<GpayViewModel>(builder:
            (BuildContext context, GpayViewModel value, Widget? child) {
          if (value.transaction.isEmpty) {
            value.apiCalling();
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1037992/pexels-photo-1037992.jpeg?auto=compress&cs=tinysrgb&w=800"))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 38.0, left: 12, right: 12, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(80, 50)),
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.search_rounded,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Search bills or recharges",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )),
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage("assets/images/pradeep.jpeg"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        const Text(
                          "Instant loans,easy EMIs",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const Text(
                          "Get up to Rs.8L, for any need",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              "Apply now",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blue.shade900),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              radius: 15,
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.transaction.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return PaymentParameters(
                        record: value.transaction[index]['image'],
                        text: value.transaction[index]['title']);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text("Active UPI Lite"),
                                Icon(Icons.add_circle),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "UPI Id:cheshthasharma123@gmail.com",
                              overflow: TextOverflow.ellipsis,
                            )),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "People",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.peopleRecord.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: value.peopleRecord[index]['subtitle'] ==
                                  'Self transfer'
                              ? const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                )
                              : Text(value.peopleRecord[index]['subtitle'][0],style: const TextStyle(color: Colors.white),),
                        ),
                        Text(
                          value.peopleRecord[index]['subtitle'],
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Business",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Explore")
                            ],
                          ))
                    ],
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.business.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: const Icon(Icons.add_circle,color: Colors.white,),
                        ),
                        Text(
                          value.business[index]['name'],
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Bills & recharges",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "No bills due. Try adding these!",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                GridView.builder(
                  itemCount: value.recharges.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                            radius: 30,
                            child:
                                value.recharges[index]['name'] == 'Electricity'
                                    ? const Icon(
                                        Icons.lightbulb_circle,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        value.recharges[index]['name'][0],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            value.recharges[index]['name'],
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      childAspectRatio: 0.85),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(child: OutlinedButton(onPressed: () {}, child: const Text("See all"))),
                // Center(
                //     child: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           shape: ,
                //
                //         ),
                //         onPressed: () {},
                //         child: const Text("See All"))),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Offers & rewards",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.offer.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                         CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                          child: const Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                        ),
                        Text(value.offer[index]['name'])
                      ],
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Manage your money",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.gps_off_outlined),
                                    Card(
                                        color: Colors.green.shade200,
                                        child: const Text("Rs.500 offer")),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Get a credit \n card",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Save upto Rs.\n12000 yearly",
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Apply now",
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.health_and_safety_sharp),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Get a loan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Instant approval &\npaperless",
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                Text(
                                  "Apply now",
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.tile.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.history),
                      title: Text(value.tile[index]['title']),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    );
                  },
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
