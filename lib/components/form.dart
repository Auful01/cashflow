import 'package:cashflow/components/space.dart';
import 'package:cashflow/components/text.dart';
import 'package:cashflow/helper/global_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextArea extends StatelessWidget {
  const TextArea({super.key, this.maxLines, this.label, this.controller});
  final maxLines, label, controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: Color(0xffC4C4C4)),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          labelText: label,
          labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
        ),
        style: TextStyle(fontSize: 14.sp, color: Colors.black),
      ),
    );
  }
}

class StdForm extends StatelessWidget {
  const StdForm(
      {super.key,
      this.label,
      this.controller,
      this.maxlength,
      this.type,
      this.formkey});
  final label;
  final controller;
  final maxlength;
  final type;
  final formkey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: TextFormField(
        key: formkey,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        maxLength: maxlength,
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: Color(0xffC4C4C4)),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: Colors.blueAccent),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
        style: TextStyle(fontSize: 14.sp, color: Colors.black),
      ),
    );
  }
}

class SearchForm extends StatefulWidget {
  SearchForm({super.key, required this.onChanged});
  final void Function(String) onChanged;

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: TextFormField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: const Color(0xffC4C4C4)),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: Colors.blueAccent),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: 'Search',
          labelStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
          suffixIcon: const Icon(Icons.search),
        ),
        style: TextStyle(fontSize: 14.sp, color: Colors.black),
      ),
    );
  }
}

class DateForm extends StatefulWidget {
  var label, controller;
  final void Function() onTap;
  DateForm({super.key, this.label, this.controller, required this.onTap});

  @override
  State<DateForm> createState() => _DateFormState();
}

class _DateFormState extends State<DateForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      child: GestureDetector(
        onTap: widget.onTap,
        child: TextField(
          enabled: false,
          controller: widget.controller,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffC4C4C4)),
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: this.widget.label,
            suffixIcon: const Icon(Icons.date_range_outlined),
            labelStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
          style: new TextStyle(fontSize: 14.sp, color: Colors.black),
        ),
      ),
    );
  }
}

class SelectForm extends StatefulWidget {
  var list, label, id, val, selected, custom;
  final void Function(Object) onChanged;
  SelectForm(
      {super.key,
      required this.list,
      this.label,
      this.id,
      this.val,
      this.selected,
      this.custom,
      required this.onChanged});

  @override
  State<SelectForm> createState() => _SelectFormState();
}

class _SelectFormState extends State<SelectForm> {
  dropDown(list) {
    return list.map<DropdownMenuItem<Object>>((item) {
      return DropdownMenuItem(
        value: item[widget.id],
        child: Row(
          children: [
            StdText(
              text: item[widget.val],
              size: 12.sp,
            ),
            const SpaceWidth(),
            widget.custom != null
                ? StdText(
                    text: "(${thousand(item[widget.custom])})",
                    size: 12.sp,
                  )
                : Container()
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xffc4c4c4)),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: widget.selected,
          hint: StdText(
            text: widget.label,
            size: 12.sp,
          ),
          isExpanded: true,
          items: dropDown(widget.list),
          onChanged: (value) {
            // setState(() {
            // widget.selected = value;
            widget.onChanged(value!);
            // });
          },
        ),
      ),
    );
  }
}
