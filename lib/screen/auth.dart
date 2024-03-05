import 'package:flutter/material.dart';
import 'package:todo_app_flutter/widgets/text_form_field_card.dart';
import 'package:todo_app_flutter/widgets/text_form_field_for_password.dart';

class Auth extends StatefulWidget {
  const Auth({super.key, required this.registrationMode});
  final bool registrationMode;

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool registrationMode;
  @override
  void initState() {
    super.initState();
    registrationMode = widget.registrationMode;
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    registrationMode ? "Créer un compte" : "Se connecter",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.black.withOpacity(0.5)),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldCard(
                    hintText: 'Email',
                    controller: _mailController,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  TextFormFieldForPassword(
                    hintText: "Mot de passe",
                    controller: _passwordController,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.32,
                        ),
                      ),
                      onPressed: () {},
                      child:
                          Text(registrationMode ? "S'inscrire" : "Se connecter"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vous aviez déjà un compte?",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: Colors.black.withOpacity(0.5)),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            registrationMode = !registrationMode;
                          });
                        },
                        child: Text(
                          registrationMode ? "S'inscrire" : "Se connecter",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
