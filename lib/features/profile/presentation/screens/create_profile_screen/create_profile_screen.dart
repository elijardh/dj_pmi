import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/common/models/models.dart';
import 'package:dj_pmi/common/utilties/custom_bottom_sheets.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/profile/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateProfileScreen extends StatelessWidget {
  final ProfileType profileType;
  const CreateProfileScreen({
    super.key,
    required this.profileType,
  });

  @override
  Widget build(BuildContext context) {
    return CreateProfileScreenContent(
      profileType: profileType,
    );
  }
}

class CreateProfileScreenContent extends StatefulWidget {
  final ProfileType profileType;
  const CreateProfileScreenContent({
    super.key,
    required this.profileType,
  });

  @override
  State<CreateProfileScreenContent> createState() =>
      _CreateProfileScreenContentState();
}

class _CreateProfileScreenContentState
    extends State<CreateProfileScreenContent> {
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  final FocusNode _genderNode = FocusNode();
  final FocusNode _ageNode = FocusNode();
  final FocusNode _dobNode = FocusNode();
  final FocusNode _countryNode = FocusNode();

  @override
  void dispose() {
    _genderController.dispose();
    _ageController.dispose();
    _countryController.dispose();
    _genderNode.dispose();
    _ageNode.dispose();
    _dobController.dispose();
    _dobNode.dispose();
    _countryNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: IntrinsicHeight(
        child: Padding(
          padding: allPadding(20),
          child: Button(
            onPressed: () => context.push(Routes.music_type_screen),
            text: 'Next',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Tell us who you are',
              style: context.titleLarge.copyWith(
                fontSize: 30.sp,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            20.verticalSpace,
            InputField(
              label: 'Full Name',
              placeHolder: 'Enter your full name',
            ),
            10.verticalSpace,
            InputField(
              label: '${widget.profileType.name} Name (as shown on DSP)',
              placeHolder:
                  'Enter your ${widget.profileType.name.toLowerCase()} name',
            ),
            10.verticalSpace,
            InputField(
              label: 'Gender',
              placeHolder: 'Select your gender',
              controller: _genderController,
              focusNode: _genderNode,
              onTap: () {
                _genderNode.unfocus();

                showCustomBottomSheetTitle(
                  child: GenderSelector(),
                  title: 'Select your gender',
                );
              },
              suffix: Icon(Icons.keyboard_arrow_down),
            ),
            10.verticalSpace,
            InputField(
              label: 'Age',
              placeHolder: 'Select your age',
              controller: _ageController,
              focusNode: _ageNode,
              onTap: () {
                _ageNode.unfocus();

                showCustomBottomSheetTitle(
                  child: GenderSelector(),
                  title: 'Select your age',
                );
              },
              suffix: Icon(Icons.keyboard_arrow_down),
            ),
            10.verticalSpace,
            InputField(
              label: 'Date of Birth',
              placeHolder: 'DD/MM/YYYY',
              controller: _dobController,
              focusNode: _dobNode,
              onTap: () async {
                _dobNode.unfocus();

                await showDatePicker(
                  context: context,
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now(),
                );
              },
            ),
            10.verticalSpace,
            InputField(
              label: 'Country',
              placeHolder: 'Select your country',
              focusNode: _countryNode,
              controller: _countryController,
              suffix: Icon(Icons.keyboard_arrow_down),
            ),
            10.verticalSpace,
            InputField(
              label: 'City',
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
