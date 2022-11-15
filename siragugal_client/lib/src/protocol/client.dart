/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data' as typed_data;
import 'package:serverpod_client/serverpod_client.dart';
import 'protocol.dart';

class _EndpointArticle extends EndpointRef {
  @override
  String get name => 'article';

  _EndpointArticle(EndpointCaller caller) : super(caller);

  Future<List<Article>> getArticle({
    String? keyword,
  }) async {
    var retval = await caller
        .callServerEndpoint('article', 'getArticle', 'List<Article>', {
      'keyword': keyword,
    });
    return (retval as List).cast();
  }

  Future<bool> addArticle(
    Article article,
  ) async {
    var retval =
        await caller.callServerEndpoint('article', 'addArticle', 'bool', {
      'article': article,
    });
    return retval;
  }

  Future<bool> updateArticle(
    Article article,
  ) async {
    var retval =
        await caller.callServerEndpoint('article', 'updateArticle', 'bool', {
      'article': article,
    });
    return retval;
  }

  Future<bool> deleteArticle(
    int id,
  ) async {
    var retval =
        await caller.callServerEndpoint('article', 'deleteArticle', 'bool', {
      'id': id,
    });
    return retval;
  }
}

class _EndpointExample extends EndpointRef {
  @override
  String get name => 'example';

  _EndpointExample(EndpointCaller caller) : super(caller);

  Future<String> hello(
    String name,
  ) async {
    var retval = await caller.callServerEndpoint('example', 'hello', 'String', {
      'name': name,
    });
    return retval;
  }
}

class Client extends ServerpodClient {
  late final _EndpointArticle article;
  late final _EndpointExample example;

  Client(String host,
      {SecurityContext? context,
      ServerpodClientErrorCallback? errorHandler,
      AuthenticationKeyManager? authenticationKeyManager})
      : super(host, Protocol.instance,
            context: context,
            errorHandler: errorHandler,
            authenticationKeyManager: authenticationKeyManager) {
    article = _EndpointArticle(this);
    example = _EndpointExample(this);
  }

  @override
  Map<String, EndpointRef> get endpointRefLookup => {
        'article': article,
        'example': example,
      };

  @override
  Map<String, ModuleEndpointCaller> get moduleLookup => {};
}
