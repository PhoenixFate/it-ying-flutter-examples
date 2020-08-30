import 'package:date_format/date_format.dart' as dateFormat;
import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  var _now = new DateTime.now();

  DateTime _selectDate = new DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay(hour: 12, minute: 0);

  _defaultShowDatePicker() async {
    //showDatePicker返回值是：Future<DateTime>，表示一个异步类型, 需要通过.then 来获取异步值
    // showDatePicker(
    //         context: context,
    //         initialDate: _now,
    //         firstDate: DateTime(1988),
    //         lastDate: DateTime(2022))
    //     .then((result) {
    //   print(result);
    // });

    //showDatePicker 自动根据操作系统 选择语言
    var result = await showDatePicker(
      context: context,
      initialDate: _now,
      firstDate: DateTime(1988),
      lastDate: DateTime(2022),
      //通过local设置语言, 默认是系统语言
      locale: Locale("zh"),
    );

    print(result);
    if (result != null) {
      setState(() {
        this._selectDate = result;
      });
    }
  }

  _defaultShowTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 12, minute: 0),
    );
    print(result);
    if (result != null) {
      setState(() {
        this._timeOfDay = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("date"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("日期：new DateTime.now()"),
            Text(this._now.toString()),
            Text("日期转时间戳：_now.millisecondsSinceEpoch"),
            Text(this._now.millisecondsSinceEpoch.toString()),
            Text("时间戳转日期: DateTime.fromMillisecondsSinceEpoch(时间戳)"),
            Text(DateTime.fromMillisecondsSinceEpoch(
                    this._now.millisecondsSinceEpoch)
                .toString()),
            Text("日期 年月日 格式化"),
            Text("第三方 格式化日期 date_format"),
            Text(dateFormat.formatDate(
                DateTime(1989, 2, 21), ["yyyy", '-', "mm", '-', "dd"])),
            Text(dateFormat.formatDate(DateTime(1989, 02, 1, 15, 40, 10),
                ["HH", ':', "nn", ':', "ss"])),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text("自带日期组件"),
                  Text(dateFormat.formatDate(this._selectDate, [
                    "yyyy",
                    '-',
                    "mm",
                    '-',
                    "dd",
                    " ",
                    "HH",
                    ":",
                    "nn",
                    ":",
                    "ss"
                  ])),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: this._defaultShowDatePicker,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text("自带时间组件"),
                  Text(_timeOfDay.toString()),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: this._defaultShowTimePicker,
            )
          ],
        ),
      ),
    );
  }
}
