import 'package:fooddelivery/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;

  late Map<String, String> mainHeaders;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}){
    
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    // token=AppConstants.TOKEN;
    token= sharedPreferences.getString(AppConstants.TOKEN)??"";

    mainHeaders={
      'Content-type':'application/json; charset=UTF-8',
      'Authorization':'Bearer $token',
    };
  }

  void updateHeader(String token){
    mainHeaders={
      'Content-type':'application/json; charset=UTF-8',
      'Authorization':'Bearer $token',
    };
  }
  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    try{
      Response response = await get(uri,
      headers:headers??mainHeaders
      );
      return response;
    }catch(e){
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
  Future <Response> postData(String uri, dynamic body)async{
    try{
      Response response = await post(uri, body, headers: mainHeaders);
      return response;
    }catch(e){
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
  
  }