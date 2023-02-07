import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF5F5F5),
        padding: const EdgeInsets.only(
          top: 80,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1, 2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: const <Widget>[
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Sign in to continue"),
                          ],
                        ),
                        TextButton(
                          child: const Text("Sign up"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: const Text("Esqueceu a senha?"),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: TextButton(
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 15),)

          ],
        ),
      ),
    );
  }
}
