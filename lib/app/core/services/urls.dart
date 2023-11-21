class Urls{
  // **** base URL ****
  static const String _baseUrl =  'https://peanut.ifxdb.com';
  // **** login ****
  static const String login = '$_baseUrl/api/ClientCabinetBasic/IsAccountCredentialsCorrect';

  // **** GetAccountInformation & GetLastFourNumbersPhone ****
  static const String getAccountInfo = '$_baseUrl/api/ClientCabinetBasic/GetAccountInformation';
  static const String getLastFourNumbersPhone  = '$_baseUrl/api/ClientCabinetBasic/GetLastFourNumbersPhone';
  // **** GetOpenTrades  ****
  static const String getOpenTrades = '$_baseUrl/api/ClientCabinetBasic/GetOpenTrades';
  
}