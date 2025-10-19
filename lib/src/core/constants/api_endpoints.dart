class ApiEndpoints {
  const ApiEndpoints._(); // Private constructor

  // Grup untuk semua endpoint terkait Autentikasi
  static const AuthEndpoints auth = AuthEndpoints();

  static const HomeEndpoints home = HomeEndpoints();

  // Grup untuk semua endpoint terkait Pengguna
  static const ProfileEndpoints profile = ProfileEndpoints();
}

// Class khusus untuk endpoint Autentikasi
class AuthEndpoints {
  const AuthEndpoints();

  final String login = '/login';
  final String logout = '/logout';
}

class HomeEndpoints {
  const HomeEndpoints();

  final String getEmission = '/v1/emission-by-client';

  String getPlacementAcsmsByClient(int clientId) =>
      '/v1/placement-acsms-by-site/$clientId';

  String getPlacementAcsmsBySite(int clientId, int siteId) =>
      '/v1/placement-acsms-by-site/$clientId/$siteId';

  final String getSiteDropdown = '/v1/site-filter';

  String postPowerStateByAc(int acId) => '/v1/acs/$acId/power';
}

class ProfileEndpoints {
  const ProfileEndpoints();

}
