import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var email = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: email,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // hintText: 'E-mail Address',
                labelText: 'E-mail Address',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                width: double.infinity,
                height: 50.0,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    print(email.text);
                    print(pass.text);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('dont\'t hava an acount ? '),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register Now'
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
