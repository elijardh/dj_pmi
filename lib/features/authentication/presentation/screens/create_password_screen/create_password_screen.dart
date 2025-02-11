import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreatePasswordScreenContent();
  }
}

class CreatePasswordScreenContent extends StatelessWidget {
  const CreatePasswordScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create a password',
              style: context.titleLarge.copyWith(
                fontSize: 30,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            20.verticalSpace,
            InputField(
              label: 'Password',
              placeHolder: 'Enter password',
              suffix: Icon(
                Icons.visibility_off_outlined,
              ),
            ),
            10.verticalSpace,
            PasswordValidator(
              title: 'A minimum of 8 characters',
              validated: true,
            ),
            PasswordValidator(
              title: 'At least one number',
              validated: false,
            ),
            PasswordValidator(
              title: 'At least one lowercase letter',
              validated: false,
            ),
            PasswordValidator(
              title: 'At least one uppercase letter',
              validated: false,
            ),
            20.verticalSpace,
            Button(
              onPressed: () => context.push(Routes.profile_type_screen),
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
