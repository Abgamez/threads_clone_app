import 'package:threads_clone_app/data/data.dart';
import 'package:threads_clone_app/data/threads.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDataSourc extends Ithread {
  @override
  List<thread> getThread() {
    return listThread()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
