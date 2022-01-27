import 'package:flutter/material.dart';
import 'package:hello_gorouter/src/app_router.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Login'),
          onPressed: () => context.read<AppRouter>().login(),
        ),
      ),
    );
  }
}
