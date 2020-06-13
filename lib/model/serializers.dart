import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'built_news.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltNews])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
