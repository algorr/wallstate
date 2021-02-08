import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallstate/common_widget/widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _displayUsername = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  BrandName(),
                  SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFCFD8DC),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _displayUsername,
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  Text('Kullanıcı Adı Hatası'),
                                              content: Text(
                                                  'Kullanıcı adını boş geçilemez, lütfen uygun bir kullanıcı adı belirleyiniz'),
                                              actions: [
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Tamam'),
                                                ),
                                              ],
                                            );
                                          });
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: "username",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _emailController,
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Email Hatası'),
                                              content: Text(
                                                  'Email alanı boş geçilemez, lütfen uygun bir email adresi giriniz.'),
                                              actions: [
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Tamam'),
                                                ),
                                              ],
                                            );
                                          });
                                    } else if (val.isNotEmpty) {
                                      Pattern pattern =
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      RegExp regex = new RegExp(pattern);
                                      if (!regex.hasMatch(val))
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text('Email Hatası'),
                                                content: Text(
                                                    'Hatalı bir email adresi girdiniz, lütfen kontrol ederek tekrar giriniz'),
                                                actions: [
                                                  FlatButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('Tamam'),
                                                  ),
                                                ],
                                              );
                                            });
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "email",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.vpn_key),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _passwordController,
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Şifre Hatası'),
                                              content: Text(
                                                  'Şifre alanı boş geçilemez, lütfen uygun bir şifre belirleyiniz'),
                                              actions: [
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Tamam'),
                                                ),
                                              ],
                                            );
                                          });
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "password",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(15)),
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlatButton(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: () async {
                    if (_formKey.currentState.validate())
                      _emailSifreKullaniciOlustur();
                    Fluttertoast.showToast(
                        msg: "Kullanıcı Başarıyla Oluşturuldu",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,

                    );
                  },
                  child: Text(
                    "Kayıt Ol",
                    style:
                        TextStyle(color: Colors.blueGrey, fontFamily: 'Ubuntu'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(15)),
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlatButton(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: () async {},
                  child: Text(
                    "Gmail ile kayıt ol",
                    style:
                        TextStyle(color: Colors.blueGrey, fontFamily: 'Ubuntu'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _emailSifreKullaniciOlustur() async {
    try {
      UserCredential _userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);
      User _newUser = _userCredential.user;
      if (_newUser != null) {
        if (!_newUser.emailVerified) {
          await _newUser.sendEmailVerification();
        }
        await _newUser.updateProfile(displayName: _displayUsername.text);
        final user1 = _auth.currentUser;
        Fluttertoast.showToast(msg: "başarıyla oluşturuldu.", backgroundColor: Colors.black, textColor: Colors.white, gravity: ToastGravity.CENTER, toastLength: Toast.LENGTH_LONG);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()));
      }
    } catch (e) {
      debugPrint("******************HATA*******************");
      debugPrint(e.toString());
    }
  }
}
