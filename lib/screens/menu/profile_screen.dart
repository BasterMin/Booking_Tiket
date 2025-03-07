import 'package:flutter/material.dart';
import 'package:flutter_bioskop/utils/color_dir.dart';
import 'package:flutter_bioskop/utils/image_dir.dart';
import 'package:flutter_bioskop/utils/svg_dir.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: ColorDir.primaryAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(ImageDir.dummyProfile),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'M Yasmin Ramadhan M',
                        style: TextStyle(
                            color: ColorDir.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Sejak 12 Januari 2024',
                        style: TextStyle(
                          color: ColorDir.whiteColor,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 10),
                      buttonMemberGold(onTap: () {}),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: ColorDir.primaryAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cardIcon(title: 'Dompet', icon: SvgDir.wallet),
                  cardIcon(title: 'Poin', icon: SvgDir.point),
                  cardIcon(title: 'Voucher', icon: SvgDir.voucher),
                  cardIcon(title: 'PayLater', icon: SvgDir.creditCard),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  cardMenuProfile(title: 'Simpan'),
                  cardMenuProfile(title: 'Riwayat'),
                  cardMenuProfile(title: 'Peringkat'),
                  cardMenuProfile(title: 'Pusat Bantuan'),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget cardMenuProfile({required String title}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: ColorDir.primaryAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: ColorDir.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text('Lorem ipsum dolor sit amet, consectetur adipisci',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: ColorDir.whiteColor, fontSize: 12))
          ],
        ),
      ),
    );
  }

  Widget buttonMemberGold({required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color(0xFFFFBC4F),
            Color(0xFFF9A01B),
          ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Member Gold',
              style: TextStyle(
                  color: ColorDir.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              size: 10,
              color: ColorDir.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardIcon({
    required String title,
    required String icon,
  }) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(color: ColorDir.whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
