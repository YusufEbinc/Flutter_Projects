import 'dart:js_util';

import 'package:flutter/material.dart';

class loginsayfasi extends StatefulWidget {
  const loginsayfasi({Key? key}) : super(key: key);

  @override
  _loginsayfasiState createState() => _loginsayfasiState();
}

class _loginsayfasiState extends State<loginsayfasi> {
  String _email = '';
  String _password = '';

  final _formkey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 250,
            child: Image.asset('assets/image.png'),
          ),
          Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Saifty!',
                  style: TextStyle(fontSize: 35),
                ),
                Text(
                  'Keep your data safe!',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    validator: (girilendeger) {
                      if (girilendeger!.length < 6 ||
                          girilendeger.contains('@')) {
                        return 'Gecerli bir Email Adresi giriniz';
                      } else
                        return null;
                    },
                    onSaved: (girilenVeri) {
                      _email = girilenVeri!;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.visibility,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    validator: (girilendeger) {
                      if (girilendeger!.length < 6) {
                        return 'Sifreniz Yetersiz';
                      }
                    },
                    onSaved: (girilenVeri) {
                      _password = girilenVeri!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()  ) {
                          _formkey.currentState!.save();

                          print('email:$_email' + '' + 'password:$_password');
                        } 
                        //_formkey.currentState!.reset();
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius:  ))),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password?',
                      style: TextStyle(fontSize: 17),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have on account ?',
                        style: TextStyle(fontSize: 17)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register!',
                          style: TextStyle(fontSize: 17),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
