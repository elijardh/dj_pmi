class LoginResponse {
  String? token;
  String? userID;
  String? refreshToken;

  LoginResponse({this.token, this.userID, this.refreshToken});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userID = json['userID'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['userID'] = userID;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
