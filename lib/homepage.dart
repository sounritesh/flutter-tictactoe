import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

_buildRaisedButton() {
  return Container(
    margin: EdgeInsets.all(10),
    height: 80,
    width: 80,
    child: RaisedButton(
      elevation: 10,
      color: Colors.blueGrey,
      onPressed: () {},
    ),
  );
}

class _HomePageState extends State<HomePage> {
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
          children: <Widget>[
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(),
                _buildRaisedButton(),
                _buildRaisedButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(),
                _buildRaisedButton(),
                _buildRaisedButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(),
                _buildRaisedButton(),
                _buildRaisedButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
