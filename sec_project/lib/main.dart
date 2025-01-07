import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff2B475E),
        body: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            const CircleAvatar(
              radius: 104,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage('images/photo_2024-06-26_02-37-28.jpg'),
              ),
            ),
            const Text(
              'Omar Tmam',
              style: TextStyle(
                  color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 60,
              endIndent: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                height: 65,
                child: const Row(
                  children: [
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xff2B475E),
                        size: 40,
                      ),
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '(+20) 1202210428',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    // Spacer(
                    //   flex: 3,
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                height: 65,
                child: const Row(
                  children: [
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xff2B475E),
                        size: 40,
                      ),
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Omartmam9@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    // Spacer(
                    //   flex: 3,
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
