import 'package:dj_pmi/common/extensions/theme.dart';
import 'package:dj_pmi/common/gen/assets.gen.dart';
import 'package:dj_pmi/features/login/domain/viewmodels/login_viewmodel.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewmodel(),
      builder: (context, child) => const LoginContent(),
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    final loading = context.select<LoginViewmodel, bool>(
      (value) => value.uiState.loading,
    );
    return Scaffold(
      body: ListView(
        children: [
          TextField(),
          Assets.illustrations.splashScreenImage.image(),
          Assets.svgs.applePay.svg(),
          Assets.svgs.arrowLeft.svg(),
          // Text(context.locale.),
          Text(
            'Large Text',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Default Text',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'very small Text',
            style: Theme.of(context).textTheme.bodySmall,
          ),

          TextField(),
          SizedBox(
            height: 10,
          ),
          10.verticalSpace,
          if (loading) CircularProgressIndicator(),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      context.appColors.brandBackground)),
              onPressed: () {
                BotToast.showText(text: 'It works');
                // context
                //     .read<LoginViewmodel>()
                //     .login(email: 'mail', password: 'pass');
              },
              child: Text(
                'welcomeToWemaII',
                style: TextStyle(color: context.appColors.brandForeground),
              )),
          SizedBox(
            height: 10,
          ),
          Selector<LoginViewmodel, bool>(
            builder: (context, loading, child) {
              // button with loading bar

              if (loading) {
                return CircularProgressIndicator();
              }
              return Container();
            },
            selector: (ctx, vm) => vm.uiState.loading,
          )
        ],
      ),
    );
  }
}
