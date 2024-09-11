import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapsko/home/widgets/home_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocialCalendar extends StatefulWidget {
  const SocialCalendar({Key? key}) : super(key: key);

  @override
  _SocialCalendarState createState() => _SocialCalendarState();
}

class _SocialCalendarState extends State<SocialCalendar> {
  EventController _eventController = EventController();
  DateTime _selectedMonth = DateTime.now();

  List<int> months = List.generate(12, (index) => index + 1);
  List<int> years =
      List.generate(101, (index) => DateTime.now().year - 50 + index);
  String eventDetails =
      "Please Select a date on the calendar to view event details here.";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _eventController.add(CalendarEventData(
        title: 'Test Event',
        date: DateTime.now(),
        description: "This os the event made for testing"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<int>(
                  value: _selectedMonth.month,
                  items: months.map((int month) {
                    return DropdownMenuItem<int>(
                      value: month,
                      child: Text(
                        _monthName(month),
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                  onChanged: (int? newMonth) {
                    if (newMonth != null) {
                      setState(() {
                        _selectedMonth =
                            DateTime(_selectedMonth.year, newMonth);
                        _eventController = EventController();
                      });
                    }
                  },
                  hint: const Text("Select Month"),
                ),
                const SizedBox(width: 20),
                DropdownButton<int>(
                  value: _selectedMonth.year,
                  items: years.map((int year) {
                    return DropdownMenuItem<int>(
                      value: year,
                      child: Text(
                        "$year",
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                  onChanged: (int? newYear) {
                    if (newYear != null) {
                      setState(() {
                        _selectedMonth =
                            DateTime(newYear, _selectedMonth.month);
                        _eventController = EventController();
                      });
                    }
                  },
                  hint: const Text("Select Year"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.w,
                  child: CalendarControllerProvider(
                    controller: _eventController,
                    child: MonthView(
                      key: ValueKey(_selectedMonth),
                      controller: _eventController,
                      minMonth: DateTime(1990),
                      maxMonth: DateTime(2050),
                      initialMonth:
                          _selectedMonth, // Updated when dropdown changes
                      cellAspectRatio: 1,
                      onPageChange: (date, pageIndex) =>
                          print("$date, $pageIndex"),
                      onCellTap: (events, date) {
                        // Callback when user taps on a cell
                        print(events);
                      },
                      startDay:
                          WeekDays.sunday, // Change the first day of the week
                      onEventTap: (event, date) => setState(() {
                        eventDetails = event.title;
                        eventDetails +=
                            "\n\n${date.day}/${date.month}/${date.year}";
                        eventDetails += "\n\n${event.description}";
                      }),
                      onEventDoubleTap: (events, date) => print(events),
                      onEventLongTap: (event, date) => print(event),
                      onDateLongPress: (date) => print(date),
                      headerBuilder:
                          MonthHeader.hidden, // To hide the month header
                      showWeekTileBorder: true,
                      hideDaysNotInMonth: true,
                      borderColor: Colors.black,
                      borderSize: 2.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: EdgeInsets.all(5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: const Color(0xffff5e14),
                            height: 6.h,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              "Event Details:",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              eventDetails,
                              style: TextStyle(
                                  fontSize: 2.5.h,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.nunito().fontFamily),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _monthName(int month) {
    List<String> monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return monthNames[month - 1];
  }
}
