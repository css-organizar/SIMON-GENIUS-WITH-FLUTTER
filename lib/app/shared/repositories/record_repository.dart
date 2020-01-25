import 'package:shared_preferences/shared_preferences.dart';

class RecordRepository{
  
  setRecord(int novoRecord) {
    try {
      SharedPreferences.getInstance().then((prefs){
        prefs.setInt("record", novoRecord);
      });
    } catch(e) {
      print("Erro.setRecord: ${e.toString()}");
    }
  }

  Future<int> getRecord() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('record') ?? 0;
  }

  // int getRecord() {

  //   try {

  //     SharedPreferences.getInstance().then((prefs){
  //       if(prefs.getKeys().contains("record")){
  //         oldRecord=prefs.getInt("record");
  //       } else {
  //         oldRecord=0;
  //       }
  //     });

  //   } catch(e) {
  //     print("Erro.getRecord: ${e.toString()}");
  //   }

  // }

}