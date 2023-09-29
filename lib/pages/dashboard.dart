import 'package:cashflow/components/container.dart';
import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/pages/cashflow.dart';
import 'package:cashflow/pages/expense.dart';
import 'package:cashflow/pages/income.dart';
import 'package:cashflow/pages/initScreen.dart';
import 'package:cashflow/pages/pengaturan.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ScreenInit(
        widget: Padding(
      padding: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StdText(
            text: "Dashboard",
            size: 24.sp,
            color: const Color.fromARGB(255, 61, 61, 61),
            weight: FontWeight.w800,
          ),
          const Space(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 300.h,
                  child: Center(
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show:
                              true, // Show both horizontal and vertical grid lines
                          drawVerticalLine: true,
                          drawHorizontalLine: true,
                          verticalInterval:
                              1.0, // Customize vertical grid line interval
                          horizontalInterval:
                              1.0, // Customize horizontal grid line interval
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                            color: const Color(0xff37434d),
                            width: 1,
                          ),
                        ),
                        minX: 0,
                        maxX: 6,
                        minY: 0,
                        maxY: 6,
                        lineBarsData: [
                          // First Line
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 3),
                              const FlSpot(1, 1),
                              const FlSpot(2, 4),
                              const FlSpot(3, 2),
                              const FlSpot(4, 5),
                              const FlSpot(5, 3),
                            ],
                            isCurved: true,
                            color: Colors.blue,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                          // Second Line
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 1),
                              const FlSpot(1, 3),
                              const FlSpot(2, 2),
                              const FlSpot(3, 4),
                              const FlSpot(4, 1),
                              const FlSpot(5, 5),
                            ],
                            isCurved: true,
                            color: Colors.red,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.square, color: Colors.blue),
                            StdText(
                              text: "Income",
                              size: 14.sp,
                              color: const Color.fromARGB(255, 61, 61, 61),
                              weight: FontWeight.w800,
                            ),
                          ],
                        ),
                        const SpaceWidth(),
                        Row(
                          children: [
                            const Icon(Icons.square, color: Colors.red),
                            StdText(
                              text: "Expense",
                              size: 14.sp,
                              color: const Color.fromARGB(255, 61, 61, 61),
                              weight: FontWeight.w800,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Income(),
                    ),
                  );
                },
                child: Container(
                  width: 1.sw / 2 - 30.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: 100.sp,
                        color: Colors.blue,
                      ),
                      StdText(
                        text: "Income",
                        size: 20.sp,
                        color: const Color.fromARGB(255, 61, 61, 61),
                        weight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Expense(),
                    ),
                  );
                },
                child: Container(
                  width: 1.sw / 2 - 30.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.money_off_rounded,
                        size: 100.sp,
                        color: Colors.red,
                      ),
                      StdText(
                        text: "Expense",
                        size: 20.sp,
                        color: const Color.fromARGB(255, 61, 61, 61),
                        weight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailCashflow(),
                  ),
                ),
                child: Container(
                  width: 1.sw / 2 - 30.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.find_in_page_rounded,
                        size: 100.sp,
                        color: Colors.blueGrey,
                      ),
                      StdText(
                        text: "Detail Cash Flow",
                        size: 14.sp,
                        color: const Color.fromARGB(255, 61, 61, 61),
                        weight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Pengaturan(),
                  ),
                ),
                child: Container(
                  width: 1.sw / 2 - 30.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 100.sp,
                        color: Colors.grey,
                      ),
                      StdText(
                        text: "Config",
                        size: 18.sp,
                        color: const Color.fromARGB(255, 61, 61, 61),
                        weight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
