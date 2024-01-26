import 'package:intl/intl.dart';

class DateHelper {
  static String ddMMYYYY(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String ddMMYYYYHHMMSS(DateTime date) {
    return DateFormat('dd/MM/yyyy HH:mm:ss').format(date);
  }

  static DateTime parse(String date) {
    return DateFormat('dd/MM/yyyy HH:mm:ss').parse(date);
  }

  static DateTime parseExtra(String date) {
    return DateFormat('yyyy-MM-ddTHH:mm:ss.SSSZ').parse(date);
  }

  static String dateTimeDisplay(DateTime dateTime) {
    return DateFormat('EEEE, MMMM d "at" h:mm a z').format(dateTime);
  }
}
