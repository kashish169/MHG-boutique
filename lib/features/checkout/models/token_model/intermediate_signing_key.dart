class IntermediateSigningKey {
  String? signedKey;
  List<dynamic>? signatures;

  IntermediateSigningKey({this.signedKey, this.signatures});

  factory IntermediateSigningKey.fromJson(Map<String, dynamic> json) {
    return IntermediateSigningKey(
      signedKey: json['signedKey'] as String?,
      signatures: json['signatures'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'signedKey': signedKey,
        'signatures': signatures,
      };
}
