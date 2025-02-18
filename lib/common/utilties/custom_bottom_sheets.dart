import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

Future<T?> showCustomBottomSheetTitle<T>({
  String? title,
  required Widget child,
  bool isDismissible = true,
  bool draggable = false,
}) async {
  final serviceLocator = GetIt.instance;
  return showModalBottomSheet<T>(
    context: serviceLocator<GlobalKey<NavigatorState>>().currentState!.context,
    isDismissible: isDismissible,
    clipBehavior: Clip.antiAlias,
    isScrollControlled: true,
    enableDrag: false,
    builder: (context) => ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      children: [
        10.verticalSpace,
        Container(
          width: double.maxFinite,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: allPadding(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    title != null
                        ? Text(
                            title,
                            style: context.bodyLarge,
                          )
                        : const SizedBox(),
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              child,
            ],
          ),
        )
      ],
    ),
  );
}

Future<T?> showCustomDraggableBottomSheetTitle<T>({
  required Widget child,
}) async {
  final serviceLocator = GetIt.instance;
  return showModalBottomSheet<T>(
    context: serviceLocator<GlobalKey<NavigatorState>>().currentState!.context,
    isDismissible: false,
    clipBehavior: Clip.antiAlias,
    isScrollControlled: true,
    enableDrag: true,
    builder: (context) => child,
  );
}
