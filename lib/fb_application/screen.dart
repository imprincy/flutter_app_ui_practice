import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  var mobValue = '';
  var passValue = '';

  @override
  void initState() {
    super.initState();
    getValue();

  }

  @override
  Widget build(BuildContext context) {
    TextEditingController mobController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "English(US)",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return ListView.builder(
                                  itemCount: 5,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return const ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                      ),
                                      trailing: Icon(Icons.call),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/fbb.png'),
                      radius: 35,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: mobController,
                decoration: InputDecoration(
                  labelText: "Mobile number or email",
                  labelStyle: const TextStyle(color: Colors.grey),
                  hintText: "Mobile number or email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: const TextStyle(color: Colors.grey),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 48),
                      backgroundColor: Colors.blue.shade500),
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString("mobileNumber", mobController.text);
                    prefs.setString("password", passController.text);
                    Navigator.pushNamed(context, 'home');
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
            const SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.blue))),
                  child: const Text(
                    "Create new account",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(child: Text("Meta"))
          ],
        ),
      ),
    );
  }

  void getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      mobValue = prefs.getString("mobileNumber") ?? 'NA';
      passValue = prefs.getString("password") ?? 'NA';
      print("mobNumber is- $mobValue and pass is- $passValue");
    });
  }

}
