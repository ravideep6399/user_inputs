import 'package:flutter/material.dart';
import 'home_page.dart';

class UserDisplay extends StatelessWidget {
  String name, email, roll, phone, insta;
  UserDisplay(
      {super.key,
      required this.name,
      required this.email,
      required this.roll,
      required this.phone,
      required this.insta});
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
          child: Column(
        children: [
          Container(
            height: 60,
            color: Color.fromARGB(255, 64, 64, 116).withOpacity(0.8),
            padding: EdgeInsets.only(top: 6),
            child: const Center(
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            width: 260,
            height: 304,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/previewimg.jpg'),
                ),
                const SizedBox(
                  height: 15.75,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 64, 64, 116)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  email,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 64, 64, 116)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  roll,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 64, 64, 116)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  phone,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 64, 64, 116)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  insta,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 64, 64, 116)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 35),
                      backgroundColor: const Color.fromARGB(255, 184, 151, 213),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: const Center(
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              const SizedBox(
                width: 17,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 35),
                      backgroundColor: const Color.fromARGB(255, 184, 151, 213),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: const Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ],
          ),
        ],
      )),
    ));
  }
}
