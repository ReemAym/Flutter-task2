import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  // const PointsCounter({super.key});
  int teamApoints = 0;

  int teamBpoints = 0;

  void addOnePointA() {
    teamApoints++;
    setState(() {});
  }

  void addTwoPointA() {
    teamApoints += 2;
    setState(() {});
  }

  void addThreePointA() {
    teamApoints += 3;
    setState(() {});
  }

  void addOnePointB() {
    teamBpoints++;
    setState(() {});
  }

  void addTwoPointB() {
    teamBpoints += 2;
    setState(() {});
  }

  void addThreePointB() {
    teamBpoints += 3;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    '$teamApoints',
                    style: TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addOnePointA,
                    child: Text(
                      'Add 1 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addTwoPointA,
                    child: Text(
                      'Add 2 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addThreePointA,
                    child: Text(
                      'Add 3 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: const Color.fromARGB(255, 190, 186, 186),
                    thickness: 1,
                  ),
                ),
                Column(children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    '$teamBpoints',
                    style: TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addOnePointB,
                    child: Text(
                      'Add 1 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addTwoPointB,
                    child: Text(
                      'Add 2 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: addThreePointB,
                    child: Text(
                      'Add 3 point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
