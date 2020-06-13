import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_news.g.dart';

abstract class BuiltNews implements Built<BuiltNews, BuiltNewsBuilder> {
  String get id;
  String get url;
  String get title;
  String get text;
  String get publisher;
  String get author;
  String get image;

  BuiltNews._();

  factory BuiltNews([updates(BuiltNewsBuilder b)]) = _$BuiltNews;

  static Serializer<BuiltNews> get serializer => _$builtNewsSerializer;
}
