import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 120,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          
                          setState(() 
                          {
                             teamAPoints++;
                          }
                          ,);
                          print('Add 1 point');
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          setState(() 
                          {
                             teamAPoints+=2;
                          }
                          ,);
                          print('Add 2 point');
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          setState(() 
                          {
                             teamAPoints+=3;
                          }
                          ,);
                          print('Add 3 point');
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 800,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 10,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 120,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          setState(() 
                          {
                             teamBPoints++;
                          }
                          ,);
                          print('Add 1 point');
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          setState(() 
                          {
                             teamBPoints+=2;
                          }
                          ,);
                          print('Add 2 point');
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(180, 70)),
                        onPressed: () {
                          setState(() 
                          {
                             teamBPoints+=3;
                          }
                          ,);
                          print('Add 3 point');
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(180, 70)),
              onPressed: () {
                setState(() {
                  teamAPoints= 0;
                  teamBPoints= 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 40,
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
