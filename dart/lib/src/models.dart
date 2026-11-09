/// Response models for the Image Converter API.

/// API Response wrapper.
class ImageconverterResponse {
  final String status;
  final dynamic error;
  final ImageconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ImageconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ImageconverterResponse.fromJson(Map<String, dynamic> json) => ImageconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ImageconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Image Converter API.

class ImageconverterData {
  String? id;
  String? inputFormat;
  String? outputFormat;
  num? inputSize;
  num? outputSize;
  String? mimeType;
  num? expires;
  String? downloadURL;
  num? outputWidth;
  num? outputHeight;

  ImageconverterData({
    this.id,
    this.inputFormat,
    this.outputFormat,
    this.inputSize,
    this.outputSize,
    this.mimeType,
    this.expires,
    this.downloadURL,
    this.outputWidth,
    this.outputHeight,
  });

  factory ImageconverterData.fromJson(Map<String, dynamic> json) => ImageconverterData(
      id: json['id'],
      inputFormat: json['inputFormat'],
      outputFormat: json['outputFormat'],
      inputSize: json['inputSize'],
      outputSize: json['outputSize'],
      mimeType: json['mimeType'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
      outputWidth: json['outputWidth'],
      outputHeight: json['outputHeight'],
    );
}

class ImageconverterRequest {
  String outputFormat;

  ImageconverterRequest({
    required this.outputFormat,
  });

  Map<String, dynamic> toJson() => {
      'outputFormat': outputFormat,
    };
}
