import 'package:cashflow/components/form.dart';
import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/pages/initScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return ScreenInit(
      widget: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                StdText(
                  text: "Pengaturan",
                  color: Colors.black,
                  weight: FontWeight.bold,
                  size: 20.sp,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StdText(
                  text: "Password Saat Ini",
                  color: Colors.black,
                  weight: FontWeight.bold,
                  size: 12.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                StdForm(
                  label: "Password Saat Ini",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StdText(
                  text: "Password Baru",
                  color: Colors.black,
                  weight: FontWeight.bold,
                  size: 12.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                StdForm(
                  label: "Password Baru",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                width: double.infinity,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.h)),
                child: TextButton(
                  onPressed: () {},
                  child: StdText(
                    text: "SIMPAN",
                    color: Colors.white,
                    weight: FontWeight.bold,
                    size: 16.sp,
                  ),
                )),
            SpaceCustom(
              custom: 300.h,
            ),
            Row(
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
                  width: 150.w,
                  height: 150.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StdText(
                      text: "Aplikasi Ini Dibuat Oleh",
                    ),
                    Space(),
                    StdText(
                      text: "Nama: Muhammad Auful Kirom",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 12.sp,
                    ),
                    Space(),
                    StdText(
                      text: "NIM: 182410102017",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 12.sp,
                    ),
                    Space(),
                    StdText(
                      text: "Tanggal: 29 September 2021",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 12.sp,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
