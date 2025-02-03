import 'package:dj_pmi/common/gen/assets.gen.dart';
import 'package:dj_pmi/features/{{featureName}}/presentation/viewmodels/{{featureName}}_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class {{featureName.pascalCase()}}Screen extends StatelessWidget {
  const {{featureName.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => {{featureName.pascalCase()}}Viewmodel(),
      builder: (context, child) => const {{featureName.pascalCase()}}Content(),
    );
  }
}

class {{featureName.pascalCase()}}Content extends StatelessWidget {
  const {{featureName.pascalCase()}}Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}