import 'package:check_in_app/screens/checkin_dialog.dart';
import 'package:check_in_app/utils/app_colors.dart';
import 'package:check_in_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height * 0.6,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(color: AppColors.primaryDark),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: size.height * 0.65,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.homeScreenLightGradientStart,
                    AppColors.homeScreenLightGradientEnd,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "assets/icons/menu.png",
                            height: 15,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            "assets/icons/download.png",
                            height: 20,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hey Jose', style: textTheme.headlineMedium),
                              Text(
                                'Tuesday 17 June, 2025',
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.homeScreenProfileIcon,
                          backgroundImage: const AssetImage(
                            'assets/icons/user.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.cardBackground,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text('Working Hours', style: textTheme.titleMedium),
                          const SizedBox(height: 10),
                          Text('00:00:00 Hrs', style: textTheme.displayMedium),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      height: 50,
                      labal: "Manual Check-in",
                      ontap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const CheckInDialog();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
