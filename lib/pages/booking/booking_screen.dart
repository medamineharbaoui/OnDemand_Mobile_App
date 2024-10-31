import 'package:flutter/material.dart';
//import 'package:homejek_app/pages/booking/booking_calendar.dart';
//import 'package:homejek_app/pages/booking/src/core/booking_calendar.dart';
import 'package:booking_calendar/booking_calendar.dart';

class Booking_Screen extends StatefulWidget {
  static String routeName = "/Booking_Screen";
  const Booking_Screen({Key? key}) : super(key: key);

  @override
  State<Booking_Screen> createState() => _Booking_ScreenState();
}

class _Booking_ScreenState extends State<Booking_Screen> {

  final now = DateTime.now();
  late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    // DateTime.now().startOfDay
    // DateTime.now().endOfDay
    mockBookingService = BookingService(
        serviceName: 'Mock Service',
        serviceDuration: 30,
        bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
        bookingStart: DateTime(now.year, now.month, now.day, 8, 0));
  }

  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
    print('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    DateTime first = now;
    DateTime second = now.add(Duration(minutes: 55));
    DateTime third = now.subtract(Duration(minutes: 240));
    DateTime fourth = now.subtract(Duration(minutes: 500));
    converted
        .add(DateTimeRange(start: first, end: now.add(Duration(minutes: 30))));
    converted.add(
        DateTimeRange(start: second, end: second.add(Duration(minutes: 23))));
    converted.add(
        DateTimeRange(start: third, end: third.add(Duration(minutes: 15))));
    converted.add(
        DateTimeRange(start: fourth, end: fourth.add(Duration(minutes: 50))));
    return converted;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Réservation des Services',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('          Réservez votre service HomeJek'),
            backgroundColor:Color(0xff06D1B0) ,
          ),
          body: Center(
            child: BookingCalendar(
              bookingService: mockBookingService,
              convertStreamResultToDateTimeRanges: convertStreamResultMock,
              getBookingStream: getBookingStreamMock,
              uploadBooking: uploadBookingMock,
            ),
          ),
        ));
  }
}


