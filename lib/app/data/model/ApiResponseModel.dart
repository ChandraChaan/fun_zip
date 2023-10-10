class ApiResponseModel {
  dynamic statusCode;
  dynamic statusLookupKey;
  dynamic statusDescription;
  dynamic data;
  List<dynamic>? messages;
  dynamic success;

  ApiResponseModel(
      {this.statusCode,
      this.statusLookupKey,
      this.statusDescription,
      this.data,
      this.messages,
      this.success});

  ApiResponseModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusLookupKey = json['statusLookupKey'];
    statusDescription = json['statusDescription'];
    data = json['data'] != null ? json['data'] : null;
    if (json['messages'] != null) {
      messages = <dynamic>[];
      json['messages'].forEach((v) {
        messages!.add(v);
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['statusLookupKey'] = this.statusLookupKey;
    data['statusDescription'] = this.statusDescription;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.messages != null) {
      data['messages'] = this.messages!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}

// class Data {
//   String? nickname;
//   String? tokenExpirationInterval;
//   String? sId;
//   String? manualRefreshInterval;
//   String? username;
//   String? token;

//   Data(
//       {this.nickname,
//       this.tokenExpirationInterval,
//       this.sId,
//       this.manualRefreshInterval,
//       this.username,
//       this.token});

//   Data.fromJson(Map<String, dynamic> json) {
//     nickname = json['nickname'];
//     tokenExpirationInterval = json['tokenExpirationInterval'];
//     sId = json['_id'];
//     manualRefreshInterval = json['manualRefreshInterval'];
//     username = json['username'];
//     token = json['token'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['nickname'] = this.nickname;
//     data['tokenExpirationInterval'] = this.tokenExpirationInterval;
//     data['_id'] = this.sId;
//     data['manualRefreshInterval'] = this.manualRefreshInterval;
//     data['username'] = this.username;
//     data['token'] = this.token;
//     return data;
//   }
// }
