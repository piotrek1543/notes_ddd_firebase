import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          child: ListView(
            children: <Widget>[
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: null,
                color: Colors.lightBlue,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
