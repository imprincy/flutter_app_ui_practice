import 'package:flutter/material.dart';

class Stay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 8,
        title: const Text("Karyam"),
        actions: const [Padding(
          padding: EdgeInsets.only(left: 8.0,right: 8),
          child: Icon(Icons.info_outline_rounded),
        )],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              width: double.infinity,
              color: Colors.white10,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Icon(
                    Icons.swipe_down,
                    color: Colors.deepPurple,
                  )),
                  Text(
                    "Swipe down to create new text",
                    style: TextStyle(color: Colors.blueGrey),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              "Categories",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, ),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.indigo.shade50,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "1",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "Task",
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "All",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.indigo.shade50,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Task",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.indigo.shade50,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Task",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.indigo.shade50,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Task",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.indigo.shade50,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Task",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.indigo.shade50,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "Task",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(child: Icon(Icons.photo_filter_rounded),alignment: Alignment.centerRight),
          ),
        ],
      ),
    );
  }
}
//const Row(
//           children: [
//             Icon(
//               Icons.menu,
//               color: Colors.black,
//             ),
//             SizedBox(
//               width: 30,
//             ),
//             Text(
//               "Karyam",
//               style: (TextStyle(
//                   fontSize: 22, fontFamily: 'FontFirst', color: Colors.black)),
//             ),
//             Icon(Icons.info_outline_rounded),
//           ],
//         ),