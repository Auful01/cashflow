import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void hideKeyboard(context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

void popScreen(BuildContext context, [dynamic data]) {
  Navigator.pop(context, data);
}

dateFormat(data, format) {
  final regex = RegExp(r'\s+');
  print(data);
  data = data.replaceAll(regex, " ");
  var arrDate = data.split(" ");
  var months = {
    "Jan": "01",
    "Feb": "02",
    "Mar": "03",
    "Apr": "04",
    "May": "05",
    "Jun": "06",
    "Jul": "07",
    "Aug": "08",
    "Sep": "09",
    "Oct": "10",
    "Nov": "11",
    "Dec": "12"
  };
  var day = arrDate[1];
  var month = arrDate[0];
  var year = arrDate[2];
  var date = '';
  if (format == 1) {
    date = day + "/" + months[month] + "/" + year;
  } else if (format == 2) {
    date = month + " " + year;
  }
  // DateTime tempDate = new DateFormat("dd/MM/yyyy").parse(date);
  // var dat = new DateTime.;
  print("tempDate");
  // var ret = new DateFormat(format);
  return date;
}

formatDate(date) {
  String formattedDate = DateFormat('dd/MM/YYYY').format(date);
  return formattedDate;
}

thousand(data) {
  var formatter = NumberFormat("###,###", "id_ID");
  var ret = formatter.format(data);
  // print("ret");
  // print(ret);
  return ret;
}
