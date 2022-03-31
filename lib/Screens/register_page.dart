import 'package:flutter/material.dart';
import 'package:lavaca/Screens/logo.dart';
import 'package:lavaca/widgets/button_fat.dart';
import 'package:lavaca/widgets/custom_input.dart';
import 'package:lavaca/widgets/labels.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: Logo(title: "\"La Vaca\" carnes a la parrilla"),
                ),
                _Form(),
                Labels(
                    route: 'login',
                    title: 'Entrar con mi cuenta',
                    subTitle: '¿Ya tienes cuenta?')
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
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //

    //

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.supervised_user_circle,
            placeholder: 'Ingrese su nombre',
            isPassword: false,
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.phone,
            placeholder: 'Ingrese su teléfono',
            isPassword: false,
            keyboardType: TextInputType.phone,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock,
            placeholder: 'Ingrese su contraseña',
            isPassword: true,
            keyboardType: TextInputType.text,
            textController: passCtrl,
          ),
          FatButton(
            title: Text(
              'Ingresar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            onPressed: () => print('Ingresar'),
          ),
        ],
      ),
    );
  }
}
