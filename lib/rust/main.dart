// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class Rust {
  Future<ID> addCitizen(
      {required String name,
      required String password,
      required int age,
      required String gender,
      dynamic hint});

  Future<void> addAppoinment(
      {required int citizenId,
      required int centerId,
      required int date,
      dynamic hint});

  Future<ID> addVaccinationCenter(
      {required String name, required String location, dynamic hint});

  Future<List<String>> getVaxCenters({dynamic hint});

  Future<ID> addOfficial(
      {required String name, required String password, dynamic hint});

  Future<CitizenData> getCitizenSummary(
      {required int id, required String password, dynamic hint});

  Future<OfficialData> getOfficialSummary(
      {required int id, required String password, dynamic hint});
}

class CitizenData {
  final String name;
  final int age;
  final String gender;
  final int sickNo;
  final int totCitizens;
  final int? aDate;
  final String? aName;
  final String? aLocation;

  CitizenData({
    required this.name,
    required this.age,
    required this.gender,
    required this.sickNo,
    required this.totCitizens,
    this.aDate,
    this.aName,
    this.aLocation,
  });
}

class ID {
  final int id;

  ID({
    required this.id,
  });
}

class OfficialData {
  final String name;

  OfficialData({
    required this.name,
  });
}

class RustImpl extends FlutterRustBridgeBase<RustWire> implements Rust {
  factory RustImpl(ffi.DynamicLibrary dylib) => RustImpl.raw(RustWire(dylib));

  RustImpl.raw(RustWire inner) : super(inner);

  Future<ID> addCitizen(
          {required String name,
          required String password,
          required int age,
          required String gender,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_add_citizen(
            port_,
            _api2wire_String(name),
            _api2wire_String(password),
            _api2wire_i64(age),
            _api2wire_String(gender)),
        parseSuccessData: _wire2api_id,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "add_citizen",
          argNames: ["name", "password", "age", "gender"],
        ),
        argValues: [name, password, age, gender],
        hint: hint,
      ));

  Future<void> addAppoinment(
          {required int citizenId,
          required int centerId,
          required int date,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_add_appoinment(
            port_,
            _api2wire_i64(citizenId),
            _api2wire_i64(centerId),
            _api2wire_i64(date)),
        parseSuccessData: _wire2api_unit,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "add_appoinment",
          argNames: ["citizenId", "centerId", "date"],
        ),
        argValues: [citizenId, centerId, date],
        hint: hint,
      ));

  Future<ID> addVaccinationCenter(
          {required String name, required String location, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_add_vaccination_center(
            port_, _api2wire_String(name), _api2wire_String(location)),
        parseSuccessData: _wire2api_id,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "add_vaccination_center",
          argNames: ["name", "location"],
        ),
        argValues: [name, location],
        hint: hint,
      ));

  Future<List<String>> getVaxCenters({dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_vax_centers(port_),
        parseSuccessData: _wire2api_StringList,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "get_vax_centers",
          argNames: [],
        ),
        argValues: [],
        hint: hint,
      ));

  Future<ID> addOfficial(
          {required String name, required String password, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_add_official(
            port_, _api2wire_String(name), _api2wire_String(password)),
        parseSuccessData: _wire2api_id,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "add_official",
          argNames: ["name", "password"],
        ),
        argValues: [name, password],
        hint: hint,
      ));

  Future<CitizenData> getCitizenSummary(
          {required int id, required String password, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_citizen_summary(
            port_, _api2wire_i64(id), _api2wire_String(password)),
        parseSuccessData: _wire2api_citizen_data,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "get_citizen_summary",
          argNames: ["id", "password"],
        ),
        argValues: [id, password],
        hint: hint,
      ));

  Future<OfficialData> getOfficialSummary(
          {required int id, required String password, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_official_summary(
            port_, _api2wire_i64(id), _api2wire_String(password)),
        parseSuccessData: _wire2api_official_data,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "get_official_summary",
          argNames: ["id", "password"],
        ),
        argValues: [id, password],
        hint: hint,
      ));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  int _api2wire_i64(int raw) {
    return raw;
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

List<String> _wire2api_StringList(dynamic raw) {
  return (raw as List<dynamic>).cast<String>();
}

int _wire2api_box_autoadd_i64(dynamic raw) {
  return raw as int;
}

CitizenData _wire2api_citizen_data(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 8)
    throw Exception('unexpected arr length: expect 8 but see ${arr.length}');
  return CitizenData(
    name: _wire2api_String(arr[0]),
    age: _wire2api_i64(arr[1]),
    gender: _wire2api_String(arr[2]),
    sickNo: _wire2api_i64(arr[3]),
    totCitizens: _wire2api_i64(arr[4]),
    aDate: _wire2api_opt_box_autoadd_i64(arr[5]),
    aName: _wire2api_opt_String(arr[6]),
    aLocation: _wire2api_opt_String(arr[7]),
  );
}

int _wire2api_i64(dynamic raw) {
  return raw as int;
}

ID _wire2api_id(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 1)
    throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
  return ID(
    id: _wire2api_i64(arr[0]),
  );
}

OfficialData _wire2api_official_data(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 1)
    throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
  return OfficialData(
    name: _wire2api_String(arr[0]),
  );
}

String? _wire2api_opt_String(dynamic raw) {
  return raw == null ? null : _wire2api_String(raw);
}

int? _wire2api_opt_box_autoadd_i64(dynamic raw) {
  return raw == null ? null : _wire2api_box_autoadd_i64(raw);
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

void _wire2api_unit(dynamic raw) {
  return;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class RustWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_add_citizen(
    int port_,
    ffi.Pointer<wire_uint_8_list> name,
    ffi.Pointer<wire_uint_8_list> password,
    int age,
    ffi.Pointer<wire_uint_8_list> gender,
  ) {
    return _wire_add_citizen(
      port_,
      name,
      password,
      age,
      gender,
    );
  }

  late final _wire_add_citizenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_add_citizen');
  late final _wire_add_citizen = _wire_add_citizenPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_add_appoinment(
    int port_,
    int citizen_id,
    int center_id,
    int date,
  ) {
    return _wire_add_appoinment(
      port_,
      citizen_id,
      center_id,
      date,
    );
  }

  late final _wire_add_appoinmentPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Int64, ffi.Int64,
              ffi.Int64)>>('wire_add_appoinment');
  late final _wire_add_appoinment =
      _wire_add_appoinmentPtr.asFunction<void Function(int, int, int, int)>();

  void wire_add_vaccination_center(
    int port_,
    ffi.Pointer<wire_uint_8_list> name,
    ffi.Pointer<wire_uint_8_list> location,
  ) {
    return _wire_add_vaccination_center(
      port_,
      name,
      location,
    );
  }

  late final _wire_add_vaccination_centerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_add_vaccination_center');
  late final _wire_add_vaccination_center =
      _wire_add_vaccination_centerPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_vax_centers(
    int port_,
  ) {
    return _wire_get_vax_centers(
      port_,
    );
  }

  late final _wire_get_vax_centersPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_vax_centers');
  late final _wire_get_vax_centers =
      _wire_get_vax_centersPtr.asFunction<void Function(int)>();

  void wire_add_official(
    int port_,
    ffi.Pointer<wire_uint_8_list> name,
    ffi.Pointer<wire_uint_8_list> password,
  ) {
    return _wire_add_official(
      port_,
      name,
      password,
    );
  }

  late final _wire_add_officialPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_add_official');
  late final _wire_add_official = _wire_add_officialPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_citizen_summary(
    int port_,
    int id,
    ffi.Pointer<wire_uint_8_list> password,
  ) {
    return _wire_get_citizen_summary(
      port_,
      id,
      password,
    );
  }

  late final _wire_get_citizen_summaryPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_citizen_summary');
  late final _wire_get_citizen_summary = _wire_get_citizen_summaryPtr
      .asFunction<void Function(int, int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_official_summary(
    int port_,
    int id,
    ffi.Pointer<wire_uint_8_list> password,
  ) {
    return _wire_get_official_summary(
      port_,
      id,
      password,
    );
  }

  late final _wire_get_official_summaryPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_official_summary');
  late final _wire_get_official_summary = _wire_get_official_summaryPtr
      .asFunction<void Function(int, int, ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
