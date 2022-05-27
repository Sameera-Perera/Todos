import 'package:http/http.dart' as http;

class RemoteTaskService {
  var client = http.Client();
  var remoteUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<dynamic> get() async {
    var response = await client.get(
        Uri.parse('$remoteUrl?userId=1')
    );
    return response;
  }
}