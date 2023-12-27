class EndPoints {
  static String getClubs() => "/clubs";
  static String getClub(String id) => "/club/$id";
  static String postClub() => "/club/";
  static String patchClub(String id) => "/club/$id";
}
