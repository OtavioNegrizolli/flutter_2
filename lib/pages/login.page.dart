import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5F5F5),
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          child: Column(
            children: [
              _singInForm,
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset("assets/facebook.png"),
                  label: const Text("Sign in with facebook"),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset("assets/google.png"),
                  label: const Text("Sign in with google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _singInForm {
    return Container(
      height: 420,
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
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            _cardHeader,
            const SizedBox(height: 50),
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
            _emailFiled,
            _forgotPasswordButton,
            _singInButton
          ],
        ),
      ),
    );
  }

  Widget get _emailFiled {
    return TextFormField(
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
    );
  }

  Container get _forgotPasswordButton {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        child: const Text("Esqueceu a senha?"),
        onPressed: () {},
      ),
    );
  }

  Widget get _singInButton {
    return Container(
      width: double.infinity,
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
    );
  }

  Widget get _cardHeader {
    return Row(
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
    );
  }
}
