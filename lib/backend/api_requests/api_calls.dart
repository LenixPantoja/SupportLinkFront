import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

import 'package:http/http.dart' as http;
export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start servicesBackend Group Code

class ServicesBackendGroup {
  static String getBaseUrl() => 'http://127.0.0.1:8000';
  static Map<String, String> headers = {};
  static ApiLoginCall ApiLogin = ApiLoginCall();
  static ApiTicketCall ApiTicket = ApiTicketCall();
  static ApiTicketComment ApiComment = ApiTicketComment();

}

String access_token = "";
int id_user = 0;
String username = "";

class dataUser{
  String tokenUser = access_token;
  int idUser = id_user;
  int getIdUser() {
    return idUser;
  }
}

class ApiGetDataUser {
  Future<Map<String, dynamic>> fetchDataUser() async {
    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Users/Username/';

      String token = access_token;

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        // Decode in format utf-8
        String decodedResponse = utf8.decode(response.bodyBytes);
        
        // Imprime la respuesta cruda para ver la estructura
        print('Respuesta de la API de datos del usuario: $decodedResponse');
        
        // Intenta decodificar la respuesta como JSON
        var jsonData = json.decode(decodedResponse);
        
        // Verifica si jsonData es un mapa
        if (jsonData is Map<String, dynamic>) {
          // Si es un mapa, retorna los datos del usuario
          id_user = jsonData["id"];
          return jsonData;  // Devuelve el mapa con los datos del usuario
        } else {
          // Si no es un mapa, hay un problema con los datos recibidos
          print('Error al llamar a la API data user: $jsonData');
          return {
            "Message": "Error en los datos recibidos: tipo de datos inesperado"
          };
        }
      } else {
        print("Error al llamar a la API tipo de solicitud. Código de estado: ${response.statusCode}");
        return {
          "Message": "Error al llamar a la API data user",
          "Status code": '${response.statusCode}'
        };
      }
    } catch (error) {
      print("Error al llamar a la API data user: $error");
      return {
        "Message": "Error al llamar a la API data user"
      };
    }
  }
}

class ApiLoginCall {
  Future<bool> call({String? username, String? password}) async {
    final url = Uri.parse('${ServicesBackendGroup.getBaseUrl()}/api/Users/token/');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      print('Código de estado: ${response.statusCode}');

      if (response.statusCode == 200) {
        // Decodifica el cuerpo de la respuesta
        final responseBody = jsonDecode(response.body);
        final token = responseBody['access'];
        access_token = token;

        // Llama a la API de datos de usuario después de obtener el token
        ApiGetDataUser apiDataUser = ApiGetDataUser();
        Map<String, dynamic> userData = await apiDataUser.fetchDataUser(); // Obtener los datos del usuario

        if (userData.isNotEmpty) {
          print('Datos del usuario obtenidos: $userData');
          //Save data in storage
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('access_token', access_token);
          await prefs.setInt('id_user', id_user);
          return true; // Retorna true si la llamada a la API de datos de usuario es exitosa
        } else {
          print('No se encontraron datos del usuario');
          return false; // Si no hay datos del usuario, retorna false
        }
      } else {
        print('Error al llamar a la API Login. Código de estado: ${response.statusCode}');
        print('Mensaje de error: ${response.body}');
        return false; // Retorna false si la solicitud falló
      }
    } catch (e) {
      // Si ocurre un error de red o excepción, imprime el error y retorna false
      print('Excepción durante la solicitud: $e');
      return false;
    }
  }
}



class ApiGetTipoSolicitud {
  Future<List<dynamic>> fetchTypeRequest() async {
    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Type/Types/';

      
      String token = access_token;

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {},
      );

      if (response.statusCode == 200) {
        // Decode in format utf-8
        String decodedResponse = utf8.decode(response.bodyBytes);
        // save data in variable jsonData
        List<dynamic> jsonData = json.decode(decodedResponse);

        return jsonData;
      } else {
        print(
            "Error al llamar a la API tipo de solicitud. Código de estado: ${response.statusCode}");
        return [
          {"Message": "return none", "Status code": '${response.statusCode}'}
        ];
      }
    } catch (error) {
      print("Error al llamar a la API tipo request: $error");
      return [
        {"Message:", "Error al llamar a la API tipo request:"}
      ];
    }
  }
}

class ApiGetGroups {
  Future<List<dynamic>> fetchGroups() async {
    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Groups/';

      
      String token = access_token;

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {},
      );

      if (response.statusCode == 200) {
        // Decode in format utf-8
        String decodedResponse = utf8.decode(response.bodyBytes);
        // save data in variable jsonData
        List<dynamic> jsonData = json.decode(decodedResponse);

        return jsonData;
      } else {
        print(
            "Error al llamar a la API groups. Código de estado: ${response.statusCode}");
        return [
          {"Message": "return none", "Status code": '${response.statusCode}'}
        ];
      }
    } catch (error) {
      print("Error al llamar a la API groups: $error");
      return [
        {"Message:", "Error al llamar a la API groups:"}
      ];
    }
  }
}

class ApiGetPriority {
  Future<List<dynamic>> fetchPriority() async {
    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Priority/priorityTicket/';

      
      String token = access_token;

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {},
      );

      if (response.statusCode == 200) {
        // Decode in format utf-8
        String decodedResponse = utf8.decode(response.bodyBytes);
        // save data in variable jsonData
        List<dynamic> jsonData = json.decode(decodedResponse);

        return jsonData;
      } else {
        print(
            "Error al llamar a la API prioridad. Código de estado: ${response.statusCode}");
        return [
          {"Message": "return none", "Status code": '${response.statusCode}'}
        ];
      }
    } catch (error) {
      print("Error al llamar a la API prioridad: $error");
      return [
        {"Message:", "Error al llamar a la API prioridad:"}
      ];
    }
  }
}

class ApiTicketCall{
  Future<ApiCallResponse> createTicket({
    required String pTicketAffair,
    required String pTicketDescription,
    required int pTicketUserContact,
    //required int pTicketAgentContact, 5 by default database
    required int? pGroupId,
    required int? pPriorityId,
    //required int pTicketState, 1 by default database
    required int? pTicketType,
  }) async {
    try {
      
      // Construir el cuerpo de la solicitud
      final Map<String, dynamic> requestBody = {
        
        "ticket_affair":pTicketAffair,
        "ticket_description":pTicketDescription,
        "ticket_user_contact":pTicketUserContact,
        "ticket_user_agent":1, // by default is required changed, depends on item creation in backend
        "ticket_group":pGroupId,
        "ticket_priority":pPriorityId,
        "ticket_state":1, // by default is required changed, depends on item creation in backend
        "ticket_type":pTicketType,
      };

      // Serializar el cuerpo en formato JSON
      final String ffApiRequestBody = jsonEncode(requestBody);

      // Realizar la llamada a la API
      final response = await ApiManager.instance.makeApiCall(
        callName: 'createTicket',
        apiUrl:
            '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/tickets/',
        callType: ApiCallType.POST,
        headers: {
          'Authorization': 'Bearer $access_token', // Incluir el token en los headers
          'Content-Type':
              'application/json', // Asegurar que el tipo de contenido sea JSON
        },
        params: {}, // Si hay parámetros en la URL, aquí se deben añadir
        body: ffApiRequestBody, // Enviar el cuerpo en formato JSON
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      );

      // Verificar el estado de la respuesta
      if (response.statusCode == 201) {
        print("Ticket creado exitosamente.");
        return response; // Devuelve la respuesta exitosa
      } else {
        // Manejar diferentes códigos de error
        print(
            "Error en la API crear ticket. Código de estado: ${response.statusCode}");
        throw Exception('Error en la API: ${response.statusCode}');
      }
    } catch (error) {
      // Capturar cualquier error en el proceso
      print("Error al crear el ticket: $error");
      rethrow; // Lanza nuevamente el error para manejarlo a otro nivel
    }
  }
}

class ApiGetTicketsOpenedUser {
  Future<Map<String, dynamic>> fetchTicketsOpened( int pPage) async {
    //get variales 
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('access_token') ?? '';
    final idUser = prefs.getInt('id_user') ?? 0;

    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/contact/tickets_opened/$idUser/?page=$pPage';

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        String decodedResponse = utf8.decode(response.bodyBytes);
        print('Respuesta cruda de la API: $decodedResponse');

        final jsonData = json.decode(decodedResponse);

        if (jsonData is Map<String, dynamic> && jsonData.containsKey('results')) {
          // Retorna el mapa completo (incluyendo resultados, paginación, etc.)
          return jsonData;
        } else {
          print('Estructura inesperada: $jsonData');
          return {
            "count": 0,
            "next": null,
            "previous": null,
            "results": []
          };
        }
      } else {
        print(token);
        print(idUser);

        print("Error en api tickets opened HTTP: ${response.statusCode}");
        return {
          "count": 0,
          "next": null,
          "previous": null,
          "results": []
        };
      }
    } catch (e) {
      print("Error al procesar la API: $e");
      return {
        "count": 0,
        "next": null,
        "previous": null,
        "results": []
      };
    }
  }
}

class ApiGetTicketsPendingUser {
  Future<Map<String, dynamic>> fetchTicketsPending( int pPage ) async {
    //get variales 
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('access_token') ?? '';
    final idUser = prefs.getInt('id_user') ?? 0;

    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/contact/tickets_pending/$idUser/?page=$pPage';

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        String decodedResponse = utf8.decode(response.bodyBytes);
        print('Respuesta cruda de la API: $decodedResponse');

        final jsonData = json.decode(decodedResponse);

        if (jsonData is Map<String, dynamic> && jsonData.containsKey('results')) {
          // Retorna el mapa completo (incluyendo resultados, paginación, etc.)
          return jsonData;
        } else {
          print('Estructura inesperada: $jsonData');
          return {
            "count": 0,
            "next": null,
            "previous": null,
            "results": []
          };
        }
      } else {
        print(token);
        print(idUser);

        print("Error en api tickets pending contact HTTP: ${response.statusCode}");
        return {
          "count": 0,
          "next": null,
          "previous": null,
          "results": []
        };
      }
    } catch (e) {
      print("Error al procesar la API tickets pending contact: $e");
      return {
        "count": 0,
        "next": null,
        "previous": null,
        "results": []
      };
    }
  }
}

class ApiGetTicketsClosedUser {
  Future<Map<String, dynamic>> fetchTicketsClosed( int pPage ) async {
    //get variales 
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('access_token') ?? '';
    final idUser = prefs.getInt('id_user') ?? 0;

    try {
      final String apiUrl =
          '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/contact/tickets_closed/$idUser/?page=$pPage';

      final http.Response response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        String decodedResponse = utf8.decode(response.bodyBytes);
        print('Respuesta cruda de la API: $decodedResponse');

        final jsonData = json.decode(decodedResponse);

        if (jsonData is Map<String, dynamic> && jsonData.containsKey('results')) {
          // Retorna el mapa completo (incluyendo resultados, paginación, etc.)
          return jsonData;
        } else {
          print('Estructura inesperada: $jsonData');
          return {
            "count": 0,
            "next": null,
            "previous": null,
            "results": []
          };
        }
      } else {
        print(token);
        print(idUser);

        print("Error en api tickets opened contact HTTP: ${response.statusCode}");
        return {
          "count": 0,
          "next": null,
          "previous": null,
          "results": []
        };
      }
    } catch (e) {
      print("Error al procesar la API tickets opened contact: $e");
      return {
        "count": 0,
        "next": null,
        "previous": null,
        "results": []
      };
    }
  }
}

class ApiTicketComment{
  Future<ApiCallResponse> createAddCommentTicket({
    required int comment_ticket,
    //required int comment_user,
    required String comment_description,
    //required int pTicketAgentContact, false by default database for users request tickets
    //required bool is_agent_response,
    
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('access_token') ?? '';
      final idUser = prefs.getInt('id_user') ?? 0;
      // Construir el cuerpo de la solicitud
      final Map<String, dynamic> requestBody = {
        
        "comment_ticket": comment_ticket,  
        "comment_user": idUser, 
        "comment_description": comment_description, 
        "is_agent_response": false
      };

      // Serializar el cuerpo en formato JSON
      final String ffApiRequestBody = jsonEncode(requestBody);

      // Realizar la llamada a la API
      final response = await ApiManager.instance.makeApiCall(
        callName: 'createAddComment',
        apiUrl:
            '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/add_comment/',
        callType: ApiCallType.POST,
        headers: {
          'Authorization': 'Bearer $token', // Incluir el token en los headers
          'Content-Type':
              'application/json', // Asegurar que el tipo de contenido sea JSON
        },
        params: {}, // Si hay parámetros en la URL, aquí se deben añadir
        body: ffApiRequestBody, // Enviar el cuerpo en formato JSON
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      );

      // Verificar el estado de la respuesta
      if (response.statusCode == 201) {
        print("Comentario creado exitosamente.");
        return response; // Devuelve la respuesta exitosa
      } else {
        // Manejar diferentes códigos de error
        print(
            "Error en la API crear commentario. Código de estado: ${response.statusCode}");
        throw Exception('Error en la API: ${response.statusCode}');
      }
    } catch (error) {
      // Capturar cualquier error en el proceso
      print("Error al crear el comentariao: $error");
      rethrow; // Lanza nuevamente el error para manejarlo a otro nivel
    }
  }
}

/// End servicesBackend Group Code

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
