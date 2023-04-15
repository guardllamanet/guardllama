import 'package:flutter/material.dart';
import 'package:guardllama/widgets/rounded_button.dart';

class Credentials {
  Credentials(this.token);

  final String token;
}

typedef LogInCallback = Future<bool> Function(Credentials creds);

class LogInScreen extends StatefulWidget {
  const LogInScreen({
    super.key,
    required this.onLogIn,
  });

  final LogInCallback onLogIn;

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _focusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  final _tokenController = TextEditingController();

  bool _tokenStringEmpty = true;

  bool _isInvalidToken = false;

  @override
  void initState() {
    super.initState();
    _tokenController.addListener(_setLogInButtonState);
  }

  void _setLogInButtonState() {
    setState(() {
      _tokenStringEmpty = _tokenController.text.isEmpty;
    });
  }

  @override
  void dispose() {
    _tokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width > 384
              ? 384
              : MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height > 266
              ? 266
              : MediaQuery.of(context).size.height * 0.2,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/guardllama-logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    controller: _tokenController,
                    focusNode: _focusNode,
                    textInputAction: TextInputAction.go,
                    onFieldSubmitted: (_) => _logIn(),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Token',
                      hintText: 'Enter your token',
                    ),
                    validator: (token) {
                      if (_isInvalidToken) {
                        return 'Incorrect token';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RoundedButton(
                    iconData: Icons.login_rounded,
                    text: "Log In",
                    disabled: _tokenStringEmpty,
                    onPressed: () => _logIn(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _logIn() {
    widget
        .onLogIn(Credentials(
      _tokenController.text,
    ))
        .then((loggedIn) {
      if (loggedIn) {
        _authenticated();
      } else {
        _unauthenticated();
      }
    }).onError((error, stackTrace) {
      _unauthenticated();
    });
  }

  void _authenticated() {
    _isInvalidToken = false;
    _formKey.currentState!.validate();
  }

  void _unauthenticated() {
    _isInvalidToken = true;
    _formKey.currentState!.validate();
    _tokenController.text = '';
    FocusScope.of(context).requestFocus(_focusNode);
  }
}
