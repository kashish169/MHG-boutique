import 'intermediate_signing_key.dart';

class GooglePayResultModel {
  String? signature;
  IntermediateSigningKey? intermediateSigningKey;
  String? protocolVersion;
  String? signedMessage;

  GooglePayResultModel({
    this.signature,
    this.intermediateSigningKey,
    this.protocolVersion,
    this.signedMessage,
  });

  factory GooglePayResultModel.fromJson(Map<String, dynamic> json) =>
      GooglePayResultModel(
        signature: json['signature'] as String?,
        intermediateSigningKey: json['intermediateSigningKey'] == null
            ? null
            : IntermediateSigningKey.fromJson(
                json['intermediateSigningKey'] as Map<String, dynamic>),
        protocolVersion: json['protocolVersion'] as String?,
        signedMessage: json['signedMessage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'signature': signature,
        'intermediateSigningKey': intermediateSigningKey?.toJson(),
        'protocolVersion': protocolVersion,
        'signedMessage': signedMessage,
      };
}
