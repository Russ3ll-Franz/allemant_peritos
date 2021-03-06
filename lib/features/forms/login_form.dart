import 'package:allemant_peritos/application/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:formz/formz.dart';

import '../widgets/text_frave.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Autenticación Incorrecta')),
            );
        }
      },
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/logo/logo_allemant1.png",
              height: 190,
              width: double.infinity,
            ),
            SizedBox(
              height: 40,
            ),
            _UsernameInput(),
            SizedBox(
              height: 15,
            ),
            _PasswordInput(),
            SizedBox(
              height: 15,
            ),
            const Align(
                alignment: Alignment.centerRight,
                child: TextFrave(
                    text: '¿Olvidaste la contraseña?',
                    color: Color(0xFF114472))),
            SizedBox(
              height: 20,
            ),
            _LoginButton(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          maxLines: 1,
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelText: 'USUARIO',
            labelStyle: const TextStyle(
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'INGRESE SU USUARIO',
            hintStyle: const TextStyle(color: Color(0xFF114472)),
            prefixIcon: const Icon(
              Iconsax.user,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            errorText: state.username.invalid ? 'invalid username' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          autofocus: false,
          textInputAction: TextInputAction.next,
          maxLines: 1,
          obscureText: true,
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          decoration: InputDecoration(
            labelText: 'password',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            labelStyle: const TextStyle(
              fontSize: 14,
            ),
            errorText: state.password.invalid ? 'contraseña incorrecta' : null,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF114472), width: 1.2),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF114472), width: 1.2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 230, 35, 9)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 192, 11, 11)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'INGRESE SU CONTRASEÑA',
            hintStyle: const TextStyle(color: Color(0xFF114472)),
            prefixIcon: const Icon(
              Iconsax.key,
              color: Color(0xFF114472),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF114472)),
                child: ElevatedButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  child: const Center(
                    child: Text(
                      'Iniciar sesion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onPressed: state.status.isValidated
                      ? () {
                          context.read<LoginBloc>().add(const LoginSubmitted());
                        }
                      : null,
                ),
              );
      },
    );
  }
}
