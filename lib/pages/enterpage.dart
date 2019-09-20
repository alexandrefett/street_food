import 'package:flutter/material.dart';
import 'package:street_food/auth.dart';

class EnterPage extends StatefulWidget {
  EnterPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EnterPageState createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Align (
          alignment: Alignment.center,
          child: Container(
            width: 300,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Fazer login com:',
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 20.0),
              ),
              Divider(height: 25,),
              Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.black45)
                        )
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Entre com email válido';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value;
                      }
                  ),
                  Padding(padding: EdgeInsets.all(4),),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.black45)
                          )

                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Entre com uma senha';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value;
                      }
                  ),
                  MaterialButton(
                      color: Colors.grey,
                      elevation: 10.0,
                      minWidth: 100.0,
                      child: Text('Entrar'),
                      onPressed: ()=> authService.emailSignIn(email, password)
                  )
              ])),
              Divider(height: 25.0,),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  MaterialButton(
                      color: Colors.white,
                      elevation: 10.0,
                      minWidth: 200.0,
                      child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(8,8,24,8),
                              child: Image.asset('assets/g-logo.png',
                                width: 24,
                                height: 24)
                            ),
                            Text('GOOGLE',style: TextStyle(fontSize: 14.0))
                          ]),
                      onPressed: ()=>authService.googleSignIn()
                  ),
                  MaterialButton(
                      color: Colors.lightBlueAccent,
                      elevation: 10.0,
                      minWidth: 200.0,
                      child: Text('FACEBOOK'),
                      onPressed: ()=>null
                  ),
                ])
              ),
        ]))))
    );
  }
}

