import 'package:flutter/material.dart';

class QSWorldUniversityRankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QS World University Ranking"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // University ranking card and details
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Universitas Lampung',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('WORLD RANKING'),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '1492',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '+1492',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text('Sumber: https://topuniversities.com'),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Tahun 2024'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Image.asset('images/QSlogo.png',
                      width: 250,
                      height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Rankings for various categories
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RankingColumn('Asian Ranking', '485', '-48'),
                    RankingColumn('Indonesian Ranking', '25', '-9'),
                    RankingColumn('Total Score', '3921213', '+3921213'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Parameters section
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Parameter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ParameterRow('1', 'Academic Reputation', '3.4'),
                    Divider(),
                    ParameterRow('2', 'Employer Reputation', '1.8'),
                    Divider(),
                    ParameterRow('3', 'Faculty Student Ratio', '4.7'),
                    Divider(),
                    ParameterRow('4', 'Citations per Faculty', '1.3'),
                    Divider(),
                    ParameterRow('5', 'International Faculty Ratio', '1'),
                    Divider(),
                    ParameterRow('6', 'International Students Ratio', '1'),
                    Divider(),
                    ParameterRow('7', 'International Research Network', '1'),
                    Divider(),
                    ParameterRow('8', 'Employment Outcomes', '5.8'),
                    Divider(),
                    ParameterRow('9', 'Sustainability', 'n/a'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for rankings
class RankingColumn extends StatelessWidget {
  final String title;
  final String ranking;
  final String change;

  RankingColumn(this.title, this.ranking, this.change);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ranking,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              change,
              style: TextStyle(
                color: change.contains('+') ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}

// Custom widget for parameters
class ParameterRow extends StatelessWidget {
  final String number;
  final String parameter;
  final String score;

  ParameterRow(this.number, this.parameter, this.score);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Text(
                number,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(width: 10),
            Text(parameter),
          ],
        ),
        Text(score),
      ],
    );
  }
}