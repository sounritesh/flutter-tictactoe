import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  String statement = '';
  bool win = false;
  _checkWin() {
    setState(() {
      if ((marker[0] == 'X' && marker[1] == 'X' && marker[2] == 'X') || (marker[0] == 'O' && marker[1] == 'O' && marker[2] == 'O')) {
        win = true;
      }
      if ((marker[3] == 'X' && marker[4] == 'X' && marker[5] == 'X') || (marker[3] == 'O' && marker[4] == 'O' && marker[5] == 'O')) {
        win = true;
      }
      if ((marker[6] == 'X' && marker[7] == 'X' && marker[8] == 'X') || (marker[6] == 'O' && marker[7] == 'O' && marker[8] == 'O')) {
        win = true;
      }
      if ((marker[0] == 'X' && marker[3] == 'X' && marker[6] == 'X') || (marker[0] == 'O' && marker[3] == 'O' && marker[6] == 'O')) {
        win = true;
      }
      if ((marker[1] == 'X' && marker[4] == 'X' && marker[7] == 'X') || (marker[1] == 'O' && marker[4] == 'O' && marker[7] == 'O')) {
        win = true;
      }
      if ((marker[2] == 'X' && marker[5] == 'X' && marker[8] == 'X') || (marker[2] == 'O' && marker[5] == 'O' && marker[8] == 'O')) {
        win = true;
      }
      if ((marker[0] == 'X' && marker[4] == 'X' && marker[8] == 'X') || (marker[0] == 'O' && marker[4] == 'O' && marker[8] == 'O')) {
        win = true;
      }
      if ((marker[2] == 'X' && marker[4] == 'X' && marker[6] == 'X') || (marker[2] == 'O' && marker[4] == 'O' && marker[6] == 'O')) {
        win = true;
      }

      if (win) {
        statement = 'Someone wins!';
      }
    });
  }

  bool _flag = true;
  List <String> marker = ['','','','','','','','',''];
  _buildRaisedButton(int id) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: 80,
      child: RaisedButton(
        child: Text(
          '${marker[id]}',
          style: TextStyle(
              fontSize: 60,
              color: Colors.white
          ),
        ),
        elevation: 10,
        color: Colors.blueGrey,
        onPressed: () {
          _checkWin();
          _changeButtonState(id);
        },
      ),
    );
  }

  _changeButtonState(int id) {
    print(marker.indexOf("", 8));
    print(marker.contains(""));
    setState(() {
      if (_flag) {
        marker[id] = 'X';
        _flag = false;
      }
      else {
        marker[id] = 'O';
        _flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(0),
                _buildRaisedButton(1),
                _buildRaisedButton(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(3),
                _buildRaisedButton(4),
                _buildRaisedButton(5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(6),
                _buildRaisedButton(7),
                _buildRaisedButton(8),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                statement
              ),
            )
          ],
        ),
      ),
    );
  }
}
