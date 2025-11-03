class ApiEndpoints {
  const ApiEndpoints._(); // Private constructor

  // Grup untuk semua endpoint terkait Autentikasi
  static const AuthEndpoints auth = AuthEndpoints();

  static const HomeEndpoints home = HomeEndpoints();

  // Grup untuk semua endpoint terkait Pengguna
  static const AttendanceEndpoints attendance = AttendanceEndpoints();

  static const LeaveEndpoints cuti = LeaveEndpoints();
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

  final String getIsClockedIn = '/attendance/is-clocked-in';
}

class AttendanceEndpoints {
  const AttendanceEndpoints();

  final String getCompanyBranches = '/company/branches';
  final String postClockIn = '/attendance/clock-in';
}

class LeaveEndpoints {
  const LeaveEndpoints();

  final String postCuti = '/cuti';
}
