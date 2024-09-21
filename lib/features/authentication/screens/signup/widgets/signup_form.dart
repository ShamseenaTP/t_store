import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle: Theme.of(context).textTheme.labelLarge,
                    prefixIcon: const Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle: Theme.of(context).textTheme.labelLarge,
                    prefixIcon: const Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //User name
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.userName,
              labelStyle: Theme.of(context).textTheme.labelLarge,
              prefixIcon: const Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Email
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.email,
              labelStyle: Theme.of(context).textTheme.labelLarge,
              prefixIcon: const Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Phone number
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              labelStyle: Theme.of(context).textTheme.labelLarge,
              prefixIcon: const Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Password
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.password,
              labelStyle: Theme.of(context).textTheme.labelLarge,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Terms&Conditions Check box
        const TTermsAndConditionCheckbox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        //Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount)),
        )
      ],
    ));
  }
}
