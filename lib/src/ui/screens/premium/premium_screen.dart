import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  static const String route = "subscription";

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 0.4,
          image: Assets.images.subscription.background.provider(),
        ),
        color: Colors.black,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30,
          sigmaY: 30,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(33),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "GYM",
                              style: AppStyles.heinch64,
                            ),
                            TextSpan(
                              text: "LAB",
                              style: AppStyles.heinch64
                                  .copyWith(color: AppColors.blue),
                            ),
                          ],
                        ),
                      ),
                      const Gap(13),
                      Container(
                        width: 44,
                        height: 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.5),
                          color: AppColors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "PRO",
                            style: AppStyles.jost12Bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    Strings.of(context).premiumDescr,
                    style: AppStyles.jost24Bold,
                  ),
                  const Gap(13),
                  Text(
                    Strings.of(context).subscribeAndGetFullAccess,
                    style: AppStyles.jost16Bold.copyWith(color: AppColors.blue),
                  ),
                  const Gap(24),
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Assets.images.subscription.training.image(),
                        const Gap(36),
                        Flexible(
                          child: Text(
                            Strings.of(context).unlimitedAccess,
                            style: AppStyles.jost16Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Assets.images.subscription.safety.image(),
                        const Gap(36),
                        Flexible(
                          child: Text(
                            Strings.of(context).fullAccess,
                            style: AppStyles.jost16Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Assets.images.subscription.support.image(),
                        const Gap(36),
                        Flexible(
                          child: Text(
                            Strings.of(context).priorityTechSupport,
                            style: AppStyles.jost16Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      BuySubscriptionButton(
                        text: Strings.of(context).subscriptionForYear,
                        price: 165,
                        onPressed: () {},
                      ),
                      Positioned(
                        top: -22,
                        right: 12,
                        child: Container(
                          width: 144,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.red,
                          ),
                          child: Center(
                            child: Text(
                              Strings.of(context).benefit33,
                              style: AppStyles.jost16Bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  BuySubscriptionButton(
                    text: Strings.of(context).subscriptionForMonth,
                    price: 249,
                    onPressed: () {},
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: Strings.of(context).restoreSubscription,
                            style: AppStyles.jost16Bold
                                .copyWith(color: AppColors.blue)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.of(context).confirmation,
                        style: AppStyles.jost12,
                      ),
                    ],
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Opacity(
                          opacity: 0.3,
                          child: Text(
                            Strings.of(context).privacyPolicy,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.jost12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          Strings.of(context).and,
                          style: AppStyles.jost12,
                        ),
                      ),
                      Flexible(
                        child: Opacity(
                          opacity: 0.3,
                          child: Text(
                            Strings.of(context).termsOfUse,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.jost12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(36),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuySubscriptionButton extends StatelessWidget {
  const BuySubscriptionButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.price,
  });

  final VoidCallback onPressed;
  final String text;
  final int price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  text,
                  style: AppStyles.jost16Bold,
                ),
              ),
              Text(
                "$price р./мес.",
                style: AppStyles.jost18Bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
