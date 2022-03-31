import 'package:flutter/material.dart';
import 'package:lavaca/Screens/logo.dart';
import 'package:lavaca/widgets/button_fat.dart';
import 'package:lavaca/widgets/custom_input.dart';
import 'package:lavaca/widgets/labels.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: Logo(title: "\"La Vaca\" carnes a la parrilla"),
                ),
                _Form(),
                const Labels(
                    route: 'register',
                    title: '¿No tienes cuenta?',
                    subTitle: 'Registrarse ahora')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  late String tokenDeviceId;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.email,
              placeholder: "Ingrese su Email",
              isPassword: false,
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl..text),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          FatButton(
            title: Text(
              'Ingresar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            onPressed: () => Navigator.pushNamed(
              context,
              'branch_office',
            ),
          ),
        ],
      ),
    );
  }
}
