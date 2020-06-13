import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

import '../model/serializers.dart';

/// Custom converter extending jsonconverter
class BuiltValueConverter extends JsonConverter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(
    Response response,
  ) {
    final Response dynamicRespsonse = super.convertResponse(response);
    final List<Map<String, dynamic>> articles =
        (dynamicRespsonse.body["articles"] as List<dynamic>)
            .map((e) => Map<String, dynamic>.from(e))
            .toList();
    // print('articles');
    // print(articles);

    final BodyType customBody = _convertToCustomObject<InnerType>(articles);
    return dynamicRespsonse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<InnerType>(dynamic element) {
    if (element is InnerType) return element;
    if (element is List)
      return _deserializeListOf<InnerType>(element);
    else
      return _deserialize(element);
  }

  BuiltList<InnerType> _deserializeListOf<InnerType>(
    List dynamicList,
  ) {
    final _deserializedList = BuiltList<InnerType>(
      dynamicList.map((element) => _deserialize<InnerType>(element)),
    );
    // print('deserialized list');
    // print(_deserializedList);
    return _deserializedList;
  }

  InnerType _deserialize<InnerType>(Map<String, dynamic> value) {
    final deserializedValue = serializers.deserializeWith(
      serializers.serializerForType(InnerType),
      value,
    );
    // print('deserialized value');
    // print(deserializedValue);
    return deserializedValue;
  }
}
