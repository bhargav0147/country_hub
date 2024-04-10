import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Hub Group Code

class HubGroup {
  static String baseUrl = 'https://restcountries.com/v3.1';
  static Map<String, String> headers = {};
  static GetAllCountryListCall getAllCountryListCall = GetAllCountryListCall();
  static GetSearchAllCountryListCall getSearchAllCountryListCall =
      GetSearchAllCountryListCall();
  static GetCountryInforamationCall getCountryInforamationCall =
      GetCountryInforamationCall();
}

class GetAllCountryListCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Country List',
      apiUrl: '${HubGroup.baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? countryNameList(dynamic response) => (getJsonField(
        response,
        r'''$[:].name.common''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagList(dynamic response) => (getJsonField(
        response,
        r'''$[:].flags.png''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? populationList(dynamic response) => (getJsonField(
        response,
        r'''$[:].population''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetSearchAllCountryListCall {
  Future<ApiCallResponse> call({
    String? countryName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Search All Country List',
      apiUrl: '${HubGroup.baseUrl}/name/$countryName?fullText=false',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? countryNameList(dynamic response) => (getJsonField(
        response,
        r'''$[:].name.common''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagList(dynamic response) => (getJsonField(
        response,
        r'''$[:].flags.png''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? populationList(dynamic response) => (getJsonField(
        response,
        r'''$[:].population''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetCountryInforamationCall {
  Future<ApiCallResponse> call({
    String? countryName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Country Inforamation',
      apiUrl: '${HubGroup.baseUrl}/name/$countryName?fullText=true',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? commonName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name.common''',
      ));
  List<String>? capital(dynamic response) => (getJsonField(
        response,
        r'''$[:].capital''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].region''',
      ));
  double? area(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].area''',
      ));
  String? googleMap(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].maps.googleMaps''',
      ));
  int? population(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].population''',
      ));
  List<String>? continets(dynamic response) => (getJsonField(
        response,
        r'''$[:].continents''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? timeZone(dynamic response) => (getJsonField(
        response,
        r'''$[:].timezones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? flag(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].flags.png''',
      ));
  String? flagDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].flags.alt''',
      ));
  List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

/// End Hub Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
