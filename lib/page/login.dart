import 'package:proyecto_moviles/page/listtask.dart';
import 'package:proyecto_moviles/page/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://www.hotelbooqi.com/wp-content/uploads/2021/12/128-1280406_view-user-icon-png-user-circle-icon-png.png',
                        width: 100,
                      ),
                    ),
                    Text("Login"),
                    Container(
                      width: 400,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.person),
                              hintText: 'Username?',
                              labelText: 'Enter your username',
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.key),
                              hintText: 'password?',
                              labelText: 'Enter your password',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil<dynamic>(
                                context,
                                MaterialPageRoute<dynamic>(
                                  builder: (BuildContext context) => RegisterPage(),
                                ),
                                    (route) =>
                                false,
                              );
                            },
                            child: const Text('You not have account?'),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => ListPage(),
                          ),
                              (route) =>
                          false,
                        );
                      },
                      child: const Text('LOGIN'),
                    ),
                  ],
                )
            );
          }
      ),
    );
  }
}