class FirebaseRoutes {
  static const String baseUrl =
      'https://identitytoolkit.googleapis.com/v1/accounts:';
  static const String appUrl = 'AIzaSyCKLOgGAMywuhRBmrIgnFQVJY8tj6i13k8';

  static const String signUp = '${baseUrl}signUp?key=$appUrl';
  static const String signIn = '${baseUrl}signInWithPassword?key=$appUrl';
}
