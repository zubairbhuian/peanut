class Urls{
  Urls._();
  static const String _baseUrl =  'https://mr-epert.onrender.com/api/v1/';
  static const String baseUrl =  'https://mr-epert.onrender.com/api/v1/';
  static const String login = '${_baseUrl}user/login';

  static const String testSendOTP = '${_baseUrl}user/test/send_otp';
  static const String sendOTP = '${_baseUrl}user/send_otp';
  static const String verifyOTP = '${_baseUrl}user/verify_otp';
  static const String addPassword = '${_baseUrl}user/add_password';
  static const String addProfile = '${_baseUrl}user/profile/update';
  static const String location = '${_baseUrl}user/profile/update-location';
  static const String becomeExpert = '${_baseUrl}user/become-expert';

  static const String testSendPasswordOTP = '${_baseUrl}user/test/password/send_otp';
  static const String sendPasswordOTP = '${_baseUrl}user/password/send_otp';
  static const String verifyPasswordOTP = '${_baseUrl}user/password/verify_otp';
  // user
  static const String userDetails = '${_baseUrl}user/profile/details';
  static const String userDetailsUpdate = '${_baseUrl}user/profile/update';
  static const String checkUser = '${_baseUrl}user/check-user';

  // jobs
  static const String jobCreate = '${_baseUrl}job/create';
  static const String jobUpdate = '${_baseUrl}job/update';
  static const String jobList= '${_baseUrl}job/list';

  //service
  static const String serviceCreate = '${_baseUrl}service/create';
  static const String userService = '${_baseUrl}service/list';


  //category
  static const String categoryList= '${_baseUrl}category/list';
  static const String subCategoryList= '${_baseUrl}sub-category/list';

  // Booking
  static const String bookProcess= '${_baseUrl}service/book';
  static const String booking= '${_baseUrl}service/bookings';

  // home
  static const String getUser= '${_baseUrl}user/list';



  
}