class SendHeartsRequestModel {
  int? hearts;
  String? phoneNumber;

  SendHeartsRequestModel({this.hearts, this.phoneNumber});

  SendHeartsRequestModel.fromJson(Map<String, dynamic> json) {
    hearts = json['hearts'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hearts'] = hearts;
    data['phone_number'] = phoneNumber;
    return data;
  }
}
