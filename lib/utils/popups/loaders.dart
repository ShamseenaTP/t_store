import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TLoaders {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: THelperFunction.isDarkMode(Get.context!)
                ? TColors.darkerGrey.withOpacity(0.9)
                : TColors.grey.withOpacity(0.9),
          ),
          child: Center(
            child: Text(message,
                style: Theme.of(Get.context!).textTheme.labelLarge),
          ),
        ),
      ),
    );
  }

  // static successSnackBar({required title, message = '', duration = 3}) {
  //   Get.snackbar(title, message,
  //       isDismissible: true,
  //       shouldIconPulse: true,
  //       colorText: Colors.white,
  //       backgroundColor: TColors.primary,
  //       snackPosition: SnackPosition.BOTTOM,
  //       duration: Duration(seconds: duration),
  //       margin: const EdgeInsets.all(10),
  //       icon: Icon(
  //         Iconsax.check,
  //         color: TColors.white,
  //       ));
  // }

  static successSnackBar({required title, message = '', duration = 3}) {
    final context = Get.context;

    if (context == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$title\n$message",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.white,
                )),
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        backgroundColor: TColors.primary,
        duration: Duration(seconds: duration),
      ),
    );
  }

  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: Colors.orange,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: Icon(
          Iconsax.warning_2,
          color: TColors.white,
        ));
  }

  // static errorSnackBar({required title, message = ''}) {
  //   Get.snackbar(title, message,
  //       isDismissible: true,
  //       shouldIconPulse: true,
  //       colorText: Colors.white,
  //       backgroundColor: Colors.red.shade600,
  //       snackPosition: SnackPosition.BOTTOM,
  //       duration: const Duration(seconds: 3),
  //       margin: const EdgeInsets.all(20),
  //       icon: Icon(
  //         Iconsax.warning_2,
  //         color: TColors.white,
  //       ));
  // }

  static errorSnackBar({required String title, String message = ''}) {
    final context = Get.context;

    if (context == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$title\n$message",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.white,
                )),
        margin: const EdgeInsets.all(20),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red.shade600,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
