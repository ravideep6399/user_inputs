import 'package:flutter/material.dart';
import 'package:user_inputs/user_display.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = TextEditingController();

  final email = TextEditingController();

  final rollNo = TextEditingController();

  final instaId = TextEditingController();

  final phoneNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/bgN 1.jpg"),
        fit: BoxFit.cover,
      )),
      child: Center(
          child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/previewimg.jpg'),
            ),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: name,
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(width: 0, color: Colors.white)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: email,
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Email address',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(width: 0, color: Colors.white)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: rollNo,
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Roll number',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(width: 0, color: Colors.white)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: instaId,
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Instagram Id',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(width: 0, color: Colors.white)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: phoneNo,
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(width: 0, color: Colors.white)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserDisplay(
                                name: name.text,
                                email: email.text,
                                roll: rollNo.text,
                                insta: instaId.text,
                                phone: phoneNo.text,
                              )));
                },
                style: ElevatedButton.styleFrom(
                    maximumSize: const Size(300, 50),
                    backgroundColor: const Color.fromARGB(255, 184, 151, 213),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ))
          ],
        ),
      )),
    ));
  }
}
