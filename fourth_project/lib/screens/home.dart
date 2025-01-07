import 'package:flutter/material.dart';
import 'package:fourth_project/components/category.dart';
import 'package:fourth_project/components/divider.dart';
import 'package:fourth_project/screens/colors_page.dart';
import 'package:fourth_project/screens/family.dart';
import 'package:fourth_project/screens/numbers_page.dart';
import 'package:fourth_project/screens/phrases_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 215, 212, 189),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    builder: (BuildContext) {
                      return const numbersPage();
                    },
                  ),
                );
              },
              text: "Numbers",
              color: Colors.orange,
            ),
            const MyDivider(
              color: Colors.black,
              thickness: 2,
              endIndent: 100,
              indent: 100,
            ),
            Category(
                text: "Family Members",
                color: Colors.green,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                      builder: (BuildContext) {
                        return const Family();
                      },
                    ),
                  );
                }),
            const MyDivider(
              color: Colors.black,
              thickness: 2,
              endIndent: 100,
              indent: 100,
            ),
            Category(
              text: "Colors",
              color: Colors.purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: avoid_types_as_parameter_names
                    builder: (BuildContext) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
            ),
            const MyDivider(
              color: Colors.black,
              thickness: 2,
              endIndent: 100,
              indent: 100,
            ),
            Category(
              text: "Phrases",
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    builder: (BuildContext) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
