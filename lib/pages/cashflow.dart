import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/helper/global_helper.dart';
import 'package:cashflow/pages/initScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailCashflow extends StatefulWidget {
  const DetailCashflow({super.key});

  @override
  State<DetailCashflow> createState() => _DetailCashflowState();
}

class _DetailCashflowState extends State<DetailCashflow> {
  var cashflow = [
    {
      "id": 1,
      "date": "2021-08-01",
      "description": "Gaji",
      "amount": 10000000,
      "type": "in",
      "category": "salary",
      "created_at": "2021-08-01T00:00:00.000000Z",
      "updated_at": "2021-08-01T00:00:00.000000Z"
    },
    {
      "id": 2,
      "date": "2021-08-01",
      "description": "Gaji",
      "amount": 10000000,
      "type": "in",
      "category": "salary",
      "created_at": "2021-08-01T00:00:00.000000Z",
      "updated_at": "2021-08-01T00:00:00.000000Z"
    },
    {
      "id": 3,
      "date": "2021-08-01",
      "description": "Gaji",
      "amount": 10000000,
      "type": "in",
      "category": "salary",
      "created_at": "2021-08-01T00:00:00.000000Z",
      "updated_at": "2021-08-01T00:00:00.000000Z"
    },
    {
      "id": 4,
      "date": "2021-08-01",
      "description": "Gaji",
      "amount": 10000000,
      "type": "in",
      "category": "salary",
      "created_at": "2021-08-01T00:00:00.000000Z",
      "updated_at": "2021-08-01T00:00:00.000000Z"
    },
    {
      "id": 5,
      "date": "2021-08-01",
      "description": "Gaji",
      "amount": 10000000,
      "type": "in",
      "category": "salary",
      "created_at": "2021-08-01T00:00:00.000000Z",
      "updated_at": "2021-08-01T00:00:00.000000Z"
    },
  ];
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
              const Text(
                "Detail Cashflow",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1.sh - 200.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: cashflow.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    cashflow[index]['type'] == 'in'
                                        ? Icons.arrow_upward
                                        : Icons.arrow_downward,
                                    color: cashflow[index]['type'] == 'in'
                                        ? Colors.green
                                        : Colors.red,
                                    size: 30.sp,
                                  ),
                                  SpaceWidth(),
                                  StdText(
                                      size: 16.sp,
                                      weight: FontWeight.bold,
                                      // ignore: prefer_interpolation_to_compose_strings
                                      text: "Rp. " +
                                          thousand(cashflow[index]['amount']))
                                ],
                              ),
                              Space(),
                              Row(
                                children: [
                                  StdText(
                                    text: cashflow[index]['description'],
                                  )
                                ],
                              ),
                              Space(),
                              Row(
                                children: [
                                  StdText(
                                    size: 12.sp,
                                    color: Colors.grey,
                                    text: cashflow[index]['date'],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                    Space(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
