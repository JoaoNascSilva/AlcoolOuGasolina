import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasolinaCtrl = new MoneyMaskedTextController();
  var _alcoolCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView (        
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(20),
            decoration:  BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Text(
                  "Compensa utilizar álcool",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Shoulders Display"
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(30),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.80),
                    borderRadius: BorderRadius.circular(60)
                  ),
                  child: FlatButton(
                    child: Text(
                      "Calcular novamente",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontFamily: "Big Shoulders Display"
                      ),
                    ),
                    onPressed: (){}      
                  ),
                )
              ],
            ),
          ),
          Input(
            ctrl: _gasolinaCtrl, 
            label: "Gasolina"
          ),
          Input(
            ctrl: _alcoolCtrl, 
            label: "Álcool"
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.80),
              borderRadius: BorderRadius.circular(60)
            ),
            child: FlatButton(
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display"
                ),
              ),
              onPressed: (){}      
            ),
          )
        ],
      ),
    );
  }
}