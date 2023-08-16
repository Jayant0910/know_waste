import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:know_waste/presentation/shared/bouncing.dart';

import '../../../shared/app_icon_button.dart';
import '../../../theme/theme.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Page content
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).viewPadding.top + 60),
                  Bouncing(
                    onTap: () {
                      // launchUrlString('mailto:jauntybrain@gmail.com');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [AppShadows.small],
                        border: Border.all(color: const Color(0xfff2f2f2)),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.mail_outline_rounded,
                            color: AppColors.secondary,
                            size: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact us',
                                  style: AppTextStyles.blackBold15,
                                ),
                                Text(
                                  'For questions, proposals, and more',
                                  style: AppTextStyles.lightGrayRegular14
                                      .copyWith(fontSize: 13, color: Colors.black.withOpacity(0.8), height: 1.3),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.open_in_new),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Bouncing(
                    onTap: () {
                      // launchUrlString('mailto:jauntybrain@gmail.com?subject=KnowWaste%20Application%20bug%20report&'
                      //     'body=Please%20describe%20the%20bug%20you%20found%20in%20the%20application.%20Thank%20you!');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [AppShadows.small],
                        border: Border.all(color: const Color(0xfff2f2f2)),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bug_report_rounded,
                            color: Colors.red,
                            size: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Report a bug',
                                  style: AppTextStyles.blackBold15,
                                ),
                                Text(
                                  'Found a problem? Please let us know!',
                                  style: AppTextStyles.lightGrayRegular14
                                      .copyWith(fontSize: 13, color: Colors.black.withOpacity(0.8), height: 1.3),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.open_in_new),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Bouncing(
                    onTap: () {
                      // GoRouter.of(context).goNamed(RouteNames.attributions);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [AppShadows.small],
                        border: Border.all(color: const Color(0xfff2f2f2)),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.info_outline_rounded,
                            color: AppColors.secondary,
                            size: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Third Party services',
                                  style: AppTextStyles.blackBold15,
                                ),
                                Text(
                                  'Check out the cool resources we use',
                                  style: AppTextStyles.lightGrayRegular14
                                      .copyWith(fontSize: 13, color: Colors.black.withOpacity(0.8), height: 1.3),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    color: Color(0xffe8e8e8),
                    thickness: 1,
                  ),
                ],
              ),
            ),
            // Top Navigation
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [AppShadows.small],
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 12,
                  top: MediaQuery.of(context).viewPadding.top,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIconButton(
                      onTap: () => GoRouter.of(context).pop(),
                      size: 45,
                      iconSize: 22,
                      fillColor: AppColors.primary.withOpacity(0.1),
                      icon: Icons.chevron_left_rounded,
                    ),
                    Text(
                      'Help & Support',
                      style: AppTextStyles.blackBlack22.copyWith(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(width: 45),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
