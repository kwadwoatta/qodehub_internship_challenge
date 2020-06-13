// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_news.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltNews> _$builtNewsSerializer = new _$BuiltNewsSerializer();

class _$BuiltNewsSerializer implements StructuredSerializer<BuiltNews> {
  @override
  final Iterable<Type> types = const [BuiltNews, _$BuiltNews];
  @override
  final String wireName = 'BuiltNews';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'publisher',
      serializers.serialize(object.publisher,
          specifiedType: const FullType(String)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltNews deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publisher':
          result.publisher = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNews extends BuiltNews {
  @override
  final String id;
  @override
  final String url;
  @override
  final String title;
  @override
  final String text;
  @override
  final String publisher;
  @override
  final String author;
  @override
  final String image;

  factory _$BuiltNews([void Function(BuiltNewsBuilder) updates]) =>
      (new BuiltNewsBuilder()..update(updates)).build();

  _$BuiltNews._(
      {this.id,
      this.url,
      this.title,
      this.text,
      this.publisher,
      this.author,
      this.image})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'title');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'text');
    }
    if (publisher == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'publisher');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'author');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('BuiltNews', 'image');
    }
  }

  @override
  BuiltNews rebuild(void Function(BuiltNewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNewsBuilder toBuilder() => new BuiltNewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNews &&
        id == other.id &&
        url == other.url &&
        title == other.title &&
        text == other.text &&
        publisher == other.publisher &&
        author == other.author &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), url.hashCode), title.hashCode),
                    text.hashCode),
                publisher.hashCode),
            author.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNews')
          ..add('id', id)
          ..add('url', url)
          ..add('title', title)
          ..add('text', text)
          ..add('publisher', publisher)
          ..add('author', author)
          ..add('image', image))
        .toString();
  }
}

class BuiltNewsBuilder implements Builder<BuiltNews, BuiltNewsBuilder> {
  _$BuiltNews _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _publisher;
  String get publisher => _$this._publisher;
  set publisher(String publisher) => _$this._publisher = publisher;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  BuiltNewsBuilder();

  BuiltNewsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _title = _$v.title;
      _text = _$v.text;
      _publisher = _$v.publisher;
      _author = _$v.author;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltNews;
  }

  @override
  void update(void Function(BuiltNewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNews build() {
    final _$result = _$v ??
        new _$BuiltNews._(
            id: id,
            url: url,
            title: title,
            text: text,
            publisher: publisher,
            author: author,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
