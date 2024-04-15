import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GLCalendar extends StatefulWidget {
  const GLCalendar({super.key});

  @override
  State<GLCalendar> createState() => _GLCalendarState();
}

class _GLCalendarState extends State<GLCalendar> {
  late int _selectedYear;
  late int _selectedMonth;

  DateTime selectedDate = DateTime.now();
  void _selectDate(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    _selectedYear = now.year;
    _selectedMonth = now.month;
  }

  String _getMonthName(int month) {
    final List<String> months = [
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
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    List<String> weekDays = [
      'ПН',
      'ВТ',
      'СР',
      'ЧТ',
      'ПТ',
      'СБ',
      'ВС',
    ];

    return Container(
      width: double.infinity,
      height: 382,
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const SizedBox(height: 19),
          //date row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedMonth--;
                      if (_selectedMonth > 12) {
                        _selectedMonth = 1;
                        _selectedYear++;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Text(
                  '${_getMonthName(_selectedMonth)} $_selectedYear',
                  style: GoogleFonts.jost(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedMonth++;
                      if (_selectedMonth > 12) {
                        _selectedMonth = 1;
                        _selectedYear++;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const Spacer(flex: 5),
                Image.asset(
                  'assets/icons/calendar_icons/calendar.png',
                  width: 20,
                  height: 20,
                ),
                const Spacer(flex: 1),
                Image.asset(
                  'assets/icons/calendar_icons/search_icon.png',
                  width: 20,
                  height: 20,
                ),
                const Spacer(flex: 1),
                Image.asset(
                  'assets/icons/calendar_icons/eclipse.png',
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          //week days row
          Container(
            width: double.infinity,
            height: 14,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Text(
                weekDays[index],
                style: GoogleFonts.jost(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffFFFFFF).withOpacity(0.3),
                ),
              ),
              separatorBuilder: (_, __) => const SizedBox(
                width: 36,
              ),
              itemCount: weekDays.length,
            ),
          ),

          const SizedBox(height: 8),

          //divider
          const Divider(
            height: 1,
          ),

          //Wrap of calendar days
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: 31,
              itemBuilder: (context, index) {
                DateTime date =
                    DateTime(selectedDate.year, selectedDate.month, index + 1);
                return GestureDetector(
                  onTap: () {
                    _selectDate(date);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: date.day == selectedDate.day
                            ? const Color(0xff6499E9)
                            : Colors.transparent,
                      ),
                    ),
                    child: Text(
                      (index + 1).toString(),
                      style: GoogleFonts.jost(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: date.day == selectedDate.day
                            ? CupertinoColors.white
                            : null,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
