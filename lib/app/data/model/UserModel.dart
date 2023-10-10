class UserModel {
  dynamic nickname;
  dynamic tokenExpirationInterval;
  dynamic sId;
  dynamic manualRefreshInterval;
  dynamic username;
  dynamic token;

  UserModel(
      {this.nickname,
      this.tokenExpirationInterval,
      this.sId,
      this.manualRefreshInterval,
      this.username,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    nickname = json['nickname'];
    tokenExpirationInterval = json['tokenExpirationInterval'];
    sId = json['_id'];
    manualRefreshInterval = json['manualRefreshInterval'];
    username = json['username'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nickname'] = this.nickname;
    data['tokenExpirationInterval'] = this.tokenExpirationInterval;
    data['_id'] = this.sId;
    data['manualRefreshInterval'] = this.manualRefreshInterval;
    data['username'] = this.username;
    data['token'] = this.token;
    return data;
  }
}
