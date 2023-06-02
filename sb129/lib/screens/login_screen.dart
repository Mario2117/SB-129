import 'package:flutter/material.dart';
import 'package:sb129/screens/screens.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/pulpo.png',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                Text('Correo',
                style: TextStyle(fontSize: 17)),
              ],
            ),
            const SizedBox(height: 6.0),
            Row(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: width-85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.only(
                           topLeft: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                        ),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'usuario@mail.com',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                           topRight: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/profile.png',
                      fit: BoxFit.cover,
                    ),
                    //Icon(Icons.account_circle_rounded,size: 40,color: Colors.white)
                  ]
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                Text('Constraseña',
                style: TextStyle(fontSize: 17)),
              ],
            ),
            const SizedBox(height: 6.0),
            Row(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: width-85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.only(
                           topLeft: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                        ),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: '*********',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                           topRight: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/locked.png',
                      width: 35,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ]
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Image.asset(
              'assets/google.png',
              height: 35,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14.0),
            Image.asset(
              'assets/facebook.png',
              height: 35,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: Size(200, 50)
              ),
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavbarScreen()));
                print('Username: $username');
                print('Password: $password');
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, )
                ),
            ),
          ],
        ),
      ),
    );
  }
}