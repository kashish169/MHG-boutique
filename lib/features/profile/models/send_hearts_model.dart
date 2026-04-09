class SendHeartsModel {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  String? data;

  SendHeartsModel(
      {this.isSuccessful,
      this.hasContent,
      this.code,
      this.message,
      this.detailedError,
      this.data});

  SendHeartsModel.fromJson(Map<String, dynamic> json) {
    isSuccessful = json['isSuccessful'];
    hasContent = json['hasContent'];
    code = json['code'];
    message = json['message'];
    detailedError = json['detailed_error'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isSuccessful'] = isSuccessful;
    data['hasContent'] = hasContent;
    data['code'] = code;
    data['message'] = message;
    data['detailed_error'] = detailedError;
    data['data'] = this.data;
    return data;
  }
}
