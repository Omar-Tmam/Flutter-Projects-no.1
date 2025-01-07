import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(fontSize: 160),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamAPoints += 1;
                        setState(() {});
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamAPoints += 2;
                        setState(() {});
                      },
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamAPoints += 3;
                        setState(() {});
                      },
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 470,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 36),
                    ),
                    Text(
                      "$teamBPoints",
                      style: TextStyle(fontSize: 160),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamBPoints += 1;
                        setState(() {});
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamBPoints += 2;
                        setState(() {});
                      },
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(),
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        teamBPoints += 3;
                        setState(() {});
                      },
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(),
                  minimumSize: Size(150, 50),
                  backgroundColor: Colors.orange),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
