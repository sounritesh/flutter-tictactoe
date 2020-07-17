import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  bool win = false;
  _checkWin() {
    
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
          _changeButtonState(id);
        },
      ),
    );
  }

  _changeButtonState(int id) {
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
            )
          ],
        ),
      ),
    );
  }
}
