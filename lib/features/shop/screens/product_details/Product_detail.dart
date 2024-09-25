import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/images/t_rounded_images.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - product image slider
            TCurvedEdgesWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: Stack(
                  children: [
                    /// Main large image
                    const SizedBox(
                        height: 400,
                        child: Padding(
                          padding:
                              EdgeInsets.all(TSizes.productImageRadius * 2),
                          child: Center(
                              child: Image(
                                  image: AssetImage(TImages.productImage5))),
                        )),

                    /// Image slider
                    Positioned(
                      right: 0,
                      bottom: 30,
                      left: TSizes.defaultSpace,
                      child: SizedBox(
                        height: 70,
                        child: ListView.separated(
                          itemCount: 6,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          itemBuilder: (_, index) => TRoundedImage(
                              width: 70,
                              backgroungColor: dark ? TColors.dark : TColors.white,
                              boader: Border.all(color: TColors.primary),
                              padding: const EdgeInsets.all(TSizes.sm),
                              imageUrl: TImages.productImage3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

            /// 2 - product details
          ],
        ),
      ),
    );
  }
}
