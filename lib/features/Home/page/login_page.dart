import 'package:flutter/material.dart';
import 'package:online/core/widgets/btn_buton.dart';
import 'package:online/core/widgets/theme_start.dart';
import 'package:online/features/login/provider/login_provider.dart';
import 'package:online/styles/colors.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();

  // ignore: non_constant_identifier_names
  TextEditingController Password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Provider = context.read<loginProvider>();

    return ThemeStart(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: [
          Text(
            'ເຂົ້າສູ່ລະບົບ',
            style: TextStyle(
                color: textWhite, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Username'),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Pls input username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Username',
                          fillColor: Colors.white70),
                      controller: username,
                    ),
                    Text('password'),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Pls input password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'password',
                          fillColor: Colors.white70),
                      controller: Password,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BtnButton(
                        title: 'ດໍາເນີນການ',
                        ontap: () {
                          if (_formkey.currentState!.validate()) {
                            Provider.login(
                                username.text, Password.text, context);
                          } else {}
                        }),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Forgot password'),
              SizedBox(
                width: 20,
                height: 0,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
