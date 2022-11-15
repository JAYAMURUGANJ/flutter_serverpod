/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/artical_endpoint.dart';
import '../endpoints/example_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'article': ArticleEndpoint()..initialize(server, 'article', null),
      'example': ExampleEndpoint()..initialize(server, 'example', null),
    };

    connectors['article'] = EndpointConnector(
      name: 'article',
      endpoint: endpoints['article']!,
      methodConnectors: {
        'getArticle': MethodConnector(
          name: 'getArticle',
          params: {
            'keyword': ParameterDescription(
                name: 'keyword', type: String, nullable: true),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['article'] as ArticleEndpoint).getArticle(
              session,
              keyword: params['keyword'],
            );
          },
        ),
        'addArticle': MethodConnector(
          name: 'addArticle',
          params: {
            'article': ParameterDescription(
                name: 'article', type: Article, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['article'] as ArticleEndpoint).addArticle(
              session,
              params['article'],
            );
          },
        ),
        'updateArticle': MethodConnector(
          name: 'updateArticle',
          params: {
            'article': ParameterDescription(
                name: 'article', type: Article, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['article'] as ArticleEndpoint).updateArticle(
              session,
              params['article'],
            );
          },
        ),
        'deleteArticle': MethodConnector(
          name: 'deleteArticle',
          params: {
            'id': ParameterDescription(name: 'id', type: int, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['article'] as ArticleEndpoint).deleteArticle(
              session,
              params['id'],
            );
          },
        ),
      },
    );

    connectors['example'] = EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).hello(
              session,
              params['name'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
