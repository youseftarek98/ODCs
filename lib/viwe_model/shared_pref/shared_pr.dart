
import 'package:shared_preferences/shared_preferences.dart';

class  SharedPref{

  // storeUser( user)async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance() ;
  //   prefs.setString('user',user) ;
  // }

  saveToken(String email )async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    prefs.setString('email',email ) ;
  //  prefs.setInt('id', id ) ;
  }



  Future <String?> getToken()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    var token = prefs.getString('token') ;
    return token ;
  }



  getUser()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    return prefs.getString('user') ;

  }



}