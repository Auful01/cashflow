import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:cashflow/components/form.dart';
import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/pages/initScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  var dateSelected, dateNow = DateTime.now();
  TextEditingController? _dateController;
  selectedDate(BuildContext context) async {
    BottomPicker.date(
            title: "Set your Birthday",
            minDateTime: DateTime(1950, 1, 1),
            maxDateTime:
                DateTime(dateNow.year - 10, dateNow.month, dateNow.day),
            initialDateTime: dateSelected != null
                ? DateTime(
                    dateSelected.year, dateSelected.month, dateSelected.day)
                : DateTime(dateNow.year - 10, dateNow.month, dateNow.day),
            titleStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
            onChange: (index) {
              print(index);
            },
            onSubmit: (index) {
              setState(() {
                dateSelected = index;
                _dateController!.text = DateFormat.yMd().format(dateSelected);
              });
            },
            bottomPickerTheme: BottomPickerTheme.plumPlate)
        .show(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenInit(
        widget: Padding(
      padding: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 0.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            StdText(
              text: "Income",
              size: 24.sp,
              color: Color.fromARGB(255, 61, 61, 61),
              weight: FontWeight.w800,
            ),
          ],
        ),
        SpaceCustom(
          custom: 20.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StdText(
                text: "Tanggal Transaksi",
                size: 14.sp,
                color: Color.fromARGB(255, 61, 61, 61),
                weight: FontWeight.w800,
              ),
              Space(),
              DateForm(
                controller: _dateController,
                label: "Tanggal Transaksi",
                onTap: () {
                  // selectDate(context);
                  selectedDate(context);
                },
              ),
            ],
          ),
        ),
        SpaceCustom(
          custom: 20.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StdText(
                text: "Nominal",
                size: 14.sp,
                color: Color.fromARGB(255, 61, 61, 61),
                weight: FontWeight.w800,
              ),
              Space(),
              const StdForm(
                label: "Nominal",
                controller: null,
                type: TextInputType.number,
              ),
            ],
          ),
        ),
        SpaceCustom(
          custom: 20.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StdText(
                text: "Keterangan",
                size: 14.sp,
                color: Color.fromARGB(255, 61, 61, 61),
                weight: FontWeight.w800,
              ),
              Space(),
              TextArea(
                label: "Keterangan",
                controller: null,
                maxLines: 5,
              )
            ],
          ),
        ),
        SpaceCustom(
          custom: 20.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color.fromARGB(255, 234, 119, 5),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(26, 0, 0, 0),
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: StdText(
                text: "RESET",
                size: 14.sp,
                color: Color.fromARGB(255, 255, 255, 255),
                weight: FontWeight.w800,
              ),
            ),
          ),
        ),
        Space(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color.fromARGB(255, 24, 95, 167),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(26, 4, 131, 204),
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: StdText(
                text: "SIMPAN",
                size: 14.sp,
                color: Color.fromARGB(255, 255, 255, 255),
                weight: FontWeight.w800,
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
