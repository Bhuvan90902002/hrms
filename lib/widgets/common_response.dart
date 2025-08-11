// To parse this JSON data, do
//
//     final commonResponse = commonResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'common_response.g.dart';

CommonResponse commonResponseFromJson(String str) =>
    CommonResponse.fromJson(json.decode(str));

String commonResponseToJson(CommonResponse data) => json.encode(data.toJson());

@JsonSerializable()
class CommonResponse {
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "success")
  final bool? success;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "meta")
  final dynamic meta;

  CommonResponse({
    this.data,
    this.success,
    this.status,
    this.message,
    this.meta,
  });

  CommonResponse copyWith({
    dynamic data,
    bool? success,
    int? status,
    String? message,
    dynamic meta,
  }) =>
      CommonResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
        message: message ?? this.message,
        meta: meta ?? this.meta,
      );

  factory CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommonResponseToJson(this);
}
