// Mocks generated by Mockito 5.3.2 from annotations
// in yunet_coding_challenge/test/utils/mock_utils.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:bloc/bloc.dart' as _i10;
import 'package:dartz/dartz.dart' as _i3;
import 'package:dio/dio.dart' as _i14;
import 'package:dio/src/adapter.dart' as _i5;
import 'package:dio/src/cancel_token.dart' as _i15;
import 'package:dio/src/dio_mixin.dart' as _i7;
import 'package:dio/src/options.dart' as _i4;
import 'package:dio/src/response.dart' as _i8;
import 'package:dio/src/transformer.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:yunet_coding_challenge/core/network/api_connection_exception.dart'
    as _i12;
import 'package:yunet_coding_challenge/core/network/api_manager.dart' as _i16;
import 'package:yunet_coding_challenge/features/soccer_clubs/models/soccer_club_model.dart'
    as _i13;
import 'package:yunet_coding_challenge/features/soccer_clubs/presentation/bloc.dart/soccer_clubs_bloc.dart'
    as _i2;
import 'package:yunet_coding_challenge/features/soccer_clubs/repositories/soccer_clubs_repo.dart'
    as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSoccerClubsState_0 extends _i1.SmartFake
    implements _i2.SoccerClubsState {
  _FakeSoccerClubsState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_2 extends _i1.SmartFake implements _i4.BaseOptions {
  _FakeBaseOptions_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_3 extends _i1.SmartFake
    implements _i5.HttpClientAdapter {
  _FakeHttpClientAdapter_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_4 extends _i1.SmartFake implements _i6.Transformer {
  _FakeTransformer_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_5 extends _i1.SmartFake implements _i7.Interceptors {
  _FakeInterceptors_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_6<T> extends _i1.SmartFake implements _i8.Response<T> {
  _FakeResponse_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SoccerClubsBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockSoccerClubsBloc extends _i1.Mock implements _i2.SoccerClubsBloc {
  MockSoccerClubsBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SoccerClubsState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeSoccerClubsState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.SoccerClubsState);
  @override
  _i9.Stream<_i2.SoccerClubsState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i9.Stream<_i2.SoccerClubsState>.empty(),
      ) as _i9.Stream<_i2.SoccerClubsState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i2.SoccerClubsEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i2.SoccerClubsEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i2.SoccerClubsState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i2.SoccerClubsEvent>(
    _i10.EventHandler<E, _i2.SoccerClubsState>? handler, {
    _i10.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i10.Transition<_i2.SoccerClubsEvent, _i2.SoccerClubsState>?
              transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i9.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  void onChange(_i10.Change<_i2.SoccerClubsState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SoccerClubsRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockSoccerClubsRepo extends _i1.Mock implements _i11.SoccerClubsRepo {
  MockSoccerClubsRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<
      _i3.Either<_i12.ApiConnectionException,
          List<_i13.SoccerClubModel>>> loadSoccerClubs() => (super.noSuchMethod(
        Invocation.method(
          #loadSoccerClubs,
          [],
        ),
        returnValue: _i9.Future<
            _i3.Either<_i12.ApiConnectionException,
                List<_i13.SoccerClubModel>>>.value(_FakeEither_1<
            _i12.ApiConnectionException, List<_i13.SoccerClubModel>>(
          this,
          Invocation.method(
            #loadSoccerClubs,
            [],
          ),
        )),
      ) as _i9.Future<
          _i3.Either<_i12.ApiConnectionException, List<_i13.SoccerClubModel>>>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i14.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_2(
          this,
          Invocation.getter(#options),
        ),
      ) as _i4.BaseOptions);
  @override
  set options(_i4.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_3(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i5.HttpClientAdapter);
  @override
  set httpClientAdapter(_i5.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_4(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i6.Transformer);
  @override
  set transformer(_i6.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_5(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i7.Interceptors);
  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i9.Future<_i8.Response<T>> get<T>(
    String? path, {
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> getUri<T>(
    Uri? uri, {
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> post<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> postUri<T>(
    Uri? uri, {
    dynamic data,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> put<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> putUri<T>(
    Uri? uri, {
    dynamic data,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> head<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> headUri<T>(
    Uri? uri, {
    dynamic data,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> delete<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> deleteUri<T>(
    Uri? uri, {
    dynamic data,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> patch<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> patchUri<T>(
    Uri? uri, {
    dynamic data,
    _i4.Options? options,
    _i15.CancelToken? cancelToken,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  void lock() => super.noSuchMethod(
        Invocation.method(
          #lock,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void unlock() => super.noSuchMethod(
        Invocation.method(
          #unlock,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i9.Future<_i8.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i4.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i15.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    dynamic data,
    _i4.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i9.Future<_i8.Response<dynamic>>.value(_FakeResponse_6<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<dynamic>>);
  @override
  _i9.Future<_i8.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i4.ProgressCallback? onReceiveProgress,
    _i15.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    dynamic data,
    _i4.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i9.Future<_i8.Response<dynamic>>.value(_FakeResponse_6<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<dynamic>>);
  @override
  _i9.Future<_i8.Response<T>> request<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i15.CancelToken? cancelToken,
    _i4.Options? options,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #request,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> requestUri<T>(
    Uri? uri, {
    dynamic data,
    _i15.CancelToken? cancelToken,
    _i4.Options? options,
    _i4.ProgressCallback? onSendProgress,
    _i4.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
  @override
  _i9.Future<_i8.Response<T>> fetch<T>(_i4.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i9.Future<_i8.Response<T>>.value(_FakeResponse_6<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i9.Future<_i8.Response<T>>);
}

/// A class which mocks [ApiManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiManager extends _i1.Mock implements _i16.ApiManager {
  MockApiManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i3.Either<_i12.ApiConnectionException, _i8.Response<dynamic>>>
      getRequest(String? url) => (super.noSuchMethod(
            Invocation.method(
              #getRequest,
              [url],
            ),
            returnValue: _i9.Future<
                _i3.Either<_i12.ApiConnectionException,
                    _i8.Response<dynamic>>>.value(_FakeEither_1<
                _i12.ApiConnectionException, _i8.Response<dynamic>>(
              this,
              Invocation.method(
                #getRequest,
                [url],
              ),
            )),
          ) as _i9.Future<
              _i3.Either<_i12.ApiConnectionException, _i8.Response<dynamic>>>);
}