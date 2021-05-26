
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation.dart';
import '../sign_in/screen.dart';
import 'bloc.dart';

class StartupScreen extends StatelessWidget {
  static const String id = '/';

  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<StartupScreenBloc, StartupScreenState>(
        listener: (context, state) {
          if (state is AuthorizedStartupScreenState) {
            // TODO: go main screen
            return;
          }
          if (state is NotAuthorizedStartupScreenState) {
            Navigation.replaceTo(SignInScreen.id);
            return;
          }
        },
        builder: (context, state) {
          if (state is InitialStartupScreenState) {
            context.read<StartupScreenBloc>().add(StartupScreenEvent.init());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

