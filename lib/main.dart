import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(WorkDaysHours());

class WorkDaysHours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: SfCalendar(
              view: CalendarView.workWeek,
              timeSlotViewSettings: TimeSlotViewSettings(
                  startHour: 9,
                  endHour: 16,
                  nonWorkingDays: <int>[DateTime.friday, DateTime.monday]),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}
