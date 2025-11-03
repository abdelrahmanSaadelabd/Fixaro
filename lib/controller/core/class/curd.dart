import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:Fixaro/controller/core/class/statesr_requst.dart';
import 'package:Fixaro/controller/core/functions/checkinternet.dart';

class Curd {
  Future<Either<StatusRequst, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkinternet()) {
        print("🔵 Sending request to: $linkurl");
        print("🟡 Data: $data");

        var response = await http.post(Uri.parse(linkurl), body: data);

        print("🟢 Status Code: ${response.statusCode}");
        print("📩 Response Body: ${response.body}");

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return left(StatusRequst.serverfailer);
        }
      } else {
        print("❌ No Internet Connection");
        return left(StatusRequst.offlinefailers);
      }
    } catch (e) {
      print("❌ Exception: $e");
      return left(StatusRequst.serverfailer);
    }
  }
}
