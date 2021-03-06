import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:social_app/config/app_config.dart';
import 'package:social_app/gen/assets.gen.dart';
import 'package:social_app/generated/l10n.dart';
import 'package:social_app/presentation/common/dialog/loading_dialog.dart';
import 'package:social_app/presentation/login/bloc/login_bloc.dart';
import 'package:social_app/utils/route/app_routing.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case LoginSuccessState:
            LoadingDialog.hideLoadingDialog();
            Navigator.pushNamed(context, RouteDefine.HomeScreen.name);
            break;
          case LoginErrorState:
            print("Login error");
            LoadingDialog.hideLoadingDialog();
            break;
          case LoginLoadingState:
            LoadingDialog.showLoadingDialog(context);
            break;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Login Screen ${S.current.home} ${Intl.getCurrentLocale()} ${AppConfig.getInstance().appFlavor}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginPressed(
                            "userName",
                            "password",
                            false,
                          ),
                        );
                  },
                  color: Colors.green,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginPressed(
                            "userName",
                            "password",
                            true,
                          ),
                        );
                  },
                  color: Colors.red,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Login Error",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () async {
                    await S.load(const Locale('vi'));
                    print("Result : ${Intl.getCurrentLocale()}");
                    setState(() {});
                  },
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Change Locale to Viet Nam",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Assets.images.cashIcon1.svg(color: Colors.red),
                Assets.images.xiao.image(width: 300, height: 200),
              ],
            ),
          ),
        );
      },
    );
  }
}
