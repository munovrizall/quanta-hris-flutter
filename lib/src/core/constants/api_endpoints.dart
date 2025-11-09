class ApiEndpoints {
  const ApiEndpoints._(); // Private constructor

  // Grup untuk semua endpoint terkait Autentikasi
  static const AuthEndpoints auth = AuthEndpoints();

  static const HomeEndpoints home = HomeEndpoints();

  // Grup untuk semua endpoint terkait Pengguna
  static const AttendanceEndpoints attendance = AttendanceEndpoints();

  static const HistoryEndpoints history = HistoryEndpoints();

  static const PayrollEndpoints payroll = PayrollEndpoints();

  static const LeaveEndpoints cuti = LeaveEndpoints();

  static const PermissionEndpoints izin = PermissionEndpoints();
}

// Class khusus untuk endpoint Autentikasi
class AuthEndpoints {
  const AuthEndpoints();

  final String login = '/login';
  final String logout = '/logout';

  final String postUpdateProfile = '/update-profile';
}

class HomeEndpoints {
  const HomeEndpoints();

  final String getOperationalHours = '/company/operational-hours';
  final String getTodayLeaves = '/attendance/today-leaves-permits';

  final String getAttendanceStatus = '/attendance/status';
}

class AttendanceEndpoints {
  const AttendanceEndpoints();

  final String getCompanyBranches = '/company/branches';
  final String postClockIn = '/attendance/clock-in';
  final String postClockOut = '/attendance/clock-out';
}

class HistoryEndpoints {
  const HistoryEndpoints();

  final String getAttendanceHistory = '/attendance/history';
}

class PayrollEndpoints {
  const PayrollEndpoints();

  final String getSlipGaji = '/slip-gaji';
  String getSlipGajiDetail(int tahun, int bulan) => '/slip-gaji/$tahun/$bulan';
  String downloadSlipGaji(int tahun, int bulan) => '/slip-gaji/$tahun/$bulan/download';
}

class LeaveEndpoints {
  const LeaveEndpoints();

  final String getCuti = '/cuti';
  final String postCuti = '/cuti';
}

class PermissionEndpoints {
  const PermissionEndpoints();

  final String getIzin = '/izin';
  final String postIzin = '/izin';
}
