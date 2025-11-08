// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slip_gaji_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SlipGajiDetailEntity {

 String get detailId; String get karyawanId; String get namaLengkap; String get jabatan; String get departemen; int get totalHadir; int get totalAlfa; int get totalTidakTepat; int get totalCuti; int get totalIzin; int get totalLembur; int get totalLemburSessions; int get gajiPokok; int get tunjanganTotal; TunjanganBreakdownEntity get tunjanganBreakdown; BpjsBreakdownEntity get bpjsBreakdown; int get lemburPay; int get potonganTotal; int get totalGaji; int get penghasilanBruto; int get penyesuaian; String? get catatanPenyesuaian; Pph21DetailEntity get pph21Detail; PotonganDetailEntity get potonganDetail; String get periodeLabel;
/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlipGajiDetailEntityCopyWith<SlipGajiDetailEntity> get copyWith => _$SlipGajiDetailEntityCopyWithImpl<SlipGajiDetailEntity>(this as SlipGajiDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlipGajiDetailEntity&&(identical(other.detailId, detailId) || other.detailId == detailId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.jabatan, jabatan) || other.jabatan == jabatan)&&(identical(other.departemen, departemen) || other.departemen == departemen)&&(identical(other.totalHadir, totalHadir) || other.totalHadir == totalHadir)&&(identical(other.totalAlfa, totalAlfa) || other.totalAlfa == totalAlfa)&&(identical(other.totalTidakTepat, totalTidakTepat) || other.totalTidakTepat == totalTidakTepat)&&(identical(other.totalCuti, totalCuti) || other.totalCuti == totalCuti)&&(identical(other.totalIzin, totalIzin) || other.totalIzin == totalIzin)&&(identical(other.totalLembur, totalLembur) || other.totalLembur == totalLembur)&&(identical(other.totalLemburSessions, totalLemburSessions) || other.totalLemburSessions == totalLemburSessions)&&(identical(other.gajiPokok, gajiPokok) || other.gajiPokok == gajiPokok)&&(identical(other.tunjanganTotal, tunjanganTotal) || other.tunjanganTotal == tunjanganTotal)&&(identical(other.tunjanganBreakdown, tunjanganBreakdown) || other.tunjanganBreakdown == tunjanganBreakdown)&&(identical(other.bpjsBreakdown, bpjsBreakdown) || other.bpjsBreakdown == bpjsBreakdown)&&(identical(other.lemburPay, lemburPay) || other.lemburPay == lemburPay)&&(identical(other.potonganTotal, potonganTotal) || other.potonganTotal == potonganTotal)&&(identical(other.totalGaji, totalGaji) || other.totalGaji == totalGaji)&&(identical(other.penghasilanBruto, penghasilanBruto) || other.penghasilanBruto == penghasilanBruto)&&(identical(other.penyesuaian, penyesuaian) || other.penyesuaian == penyesuaian)&&(identical(other.catatanPenyesuaian, catatanPenyesuaian) || other.catatanPenyesuaian == catatanPenyesuaian)&&(identical(other.pph21Detail, pph21Detail) || other.pph21Detail == pph21Detail)&&(identical(other.potonganDetail, potonganDetail) || other.potonganDetail == potonganDetail)&&(identical(other.periodeLabel, periodeLabel) || other.periodeLabel == periodeLabel));
}


@override
int get hashCode => Object.hashAll([runtimeType,detailId,karyawanId,namaLengkap,jabatan,departemen,totalHadir,totalAlfa,totalTidakTepat,totalCuti,totalIzin,totalLembur,totalLemburSessions,gajiPokok,tunjanganTotal,tunjanganBreakdown,bpjsBreakdown,lemburPay,potonganTotal,totalGaji,penghasilanBruto,penyesuaian,catatanPenyesuaian,pph21Detail,potonganDetail,periodeLabel]);

@override
String toString() {
  return 'SlipGajiDetailEntity(detailId: $detailId, karyawanId: $karyawanId, namaLengkap: $namaLengkap, jabatan: $jabatan, departemen: $departemen, totalHadir: $totalHadir, totalAlfa: $totalAlfa, totalTidakTepat: $totalTidakTepat, totalCuti: $totalCuti, totalIzin: $totalIzin, totalLembur: $totalLembur, totalLemburSessions: $totalLemburSessions, gajiPokok: $gajiPokok, tunjanganTotal: $tunjanganTotal, tunjanganBreakdown: $tunjanganBreakdown, bpjsBreakdown: $bpjsBreakdown, lemburPay: $lemburPay, potonganTotal: $potonganTotal, totalGaji: $totalGaji, penghasilanBruto: $penghasilanBruto, penyesuaian: $penyesuaian, catatanPenyesuaian: $catatanPenyesuaian, pph21Detail: $pph21Detail, potonganDetail: $potonganDetail, periodeLabel: $periodeLabel)';
}


}

/// @nodoc
abstract mixin class $SlipGajiDetailEntityCopyWith<$Res>  {
  factory $SlipGajiDetailEntityCopyWith(SlipGajiDetailEntity value, $Res Function(SlipGajiDetailEntity) _then) = _$SlipGajiDetailEntityCopyWithImpl;
@useResult
$Res call({
 String detailId, String karyawanId, String namaLengkap, String jabatan, String departemen, int totalHadir, int totalAlfa, int totalTidakTepat, int totalCuti, int totalIzin, int totalLembur, int totalLemburSessions, int gajiPokok, int tunjanganTotal, TunjanganBreakdownEntity tunjanganBreakdown, BpjsBreakdownEntity bpjsBreakdown, int lemburPay, int potonganTotal, int totalGaji, int penghasilanBruto, int penyesuaian, String? catatanPenyesuaian, Pph21DetailEntity pph21Detail, PotonganDetailEntity potonganDetail, String periodeLabel
});


$TunjanganBreakdownEntityCopyWith<$Res> get tunjanganBreakdown;$BpjsBreakdownEntityCopyWith<$Res> get bpjsBreakdown;$Pph21DetailEntityCopyWith<$Res> get pph21Detail;$PotonganDetailEntityCopyWith<$Res> get potonganDetail;

}
/// @nodoc
class _$SlipGajiDetailEntityCopyWithImpl<$Res>
    implements $SlipGajiDetailEntityCopyWith<$Res> {
  _$SlipGajiDetailEntityCopyWithImpl(this._self, this._then);

  final SlipGajiDetailEntity _self;
  final $Res Function(SlipGajiDetailEntity) _then;

/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detailId = null,Object? karyawanId = null,Object? namaLengkap = null,Object? jabatan = null,Object? departemen = null,Object? totalHadir = null,Object? totalAlfa = null,Object? totalTidakTepat = null,Object? totalCuti = null,Object? totalIzin = null,Object? totalLembur = null,Object? totalLemburSessions = null,Object? gajiPokok = null,Object? tunjanganTotal = null,Object? tunjanganBreakdown = null,Object? bpjsBreakdown = null,Object? lemburPay = null,Object? potonganTotal = null,Object? totalGaji = null,Object? penghasilanBruto = null,Object? penyesuaian = null,Object? catatanPenyesuaian = freezed,Object? pph21Detail = null,Object? potonganDetail = null,Object? periodeLabel = null,}) {
  return _then(_self.copyWith(
detailId: null == detailId ? _self.detailId : detailId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,jabatan: null == jabatan ? _self.jabatan : jabatan // ignore: cast_nullable_to_non_nullable
as String,departemen: null == departemen ? _self.departemen : departemen // ignore: cast_nullable_to_non_nullable
as String,totalHadir: null == totalHadir ? _self.totalHadir : totalHadir // ignore: cast_nullable_to_non_nullable
as int,totalAlfa: null == totalAlfa ? _self.totalAlfa : totalAlfa // ignore: cast_nullable_to_non_nullable
as int,totalTidakTepat: null == totalTidakTepat ? _self.totalTidakTepat : totalTidakTepat // ignore: cast_nullable_to_non_nullable
as int,totalCuti: null == totalCuti ? _self.totalCuti : totalCuti // ignore: cast_nullable_to_non_nullable
as int,totalIzin: null == totalIzin ? _self.totalIzin : totalIzin // ignore: cast_nullable_to_non_nullable
as int,totalLembur: null == totalLembur ? _self.totalLembur : totalLembur // ignore: cast_nullable_to_non_nullable
as int,totalLemburSessions: null == totalLemburSessions ? _self.totalLemburSessions : totalLemburSessions // ignore: cast_nullable_to_non_nullable
as int,gajiPokok: null == gajiPokok ? _self.gajiPokok : gajiPokok // ignore: cast_nullable_to_non_nullable
as int,tunjanganTotal: null == tunjanganTotal ? _self.tunjanganTotal : tunjanganTotal // ignore: cast_nullable_to_non_nullable
as int,tunjanganBreakdown: null == tunjanganBreakdown ? _self.tunjanganBreakdown : tunjanganBreakdown // ignore: cast_nullable_to_non_nullable
as TunjanganBreakdownEntity,bpjsBreakdown: null == bpjsBreakdown ? _self.bpjsBreakdown : bpjsBreakdown // ignore: cast_nullable_to_non_nullable
as BpjsBreakdownEntity,lemburPay: null == lemburPay ? _self.lemburPay : lemburPay // ignore: cast_nullable_to_non_nullable
as int,potonganTotal: null == potonganTotal ? _self.potonganTotal : potonganTotal // ignore: cast_nullable_to_non_nullable
as int,totalGaji: null == totalGaji ? _self.totalGaji : totalGaji // ignore: cast_nullable_to_non_nullable
as int,penghasilanBruto: null == penghasilanBruto ? _self.penghasilanBruto : penghasilanBruto // ignore: cast_nullable_to_non_nullable
as int,penyesuaian: null == penyesuaian ? _self.penyesuaian : penyesuaian // ignore: cast_nullable_to_non_nullable
as int,catatanPenyesuaian: freezed == catatanPenyesuaian ? _self.catatanPenyesuaian : catatanPenyesuaian // ignore: cast_nullable_to_non_nullable
as String?,pph21Detail: null == pph21Detail ? _self.pph21Detail : pph21Detail // ignore: cast_nullable_to_non_nullable
as Pph21DetailEntity,potonganDetail: null == potonganDetail ? _self.potonganDetail : potonganDetail // ignore: cast_nullable_to_non_nullable
as PotonganDetailEntity,periodeLabel: null == periodeLabel ? _self.periodeLabel : periodeLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TunjanganBreakdownEntityCopyWith<$Res> get tunjanganBreakdown {
  
  return $TunjanganBreakdownEntityCopyWith<$Res>(_self.tunjanganBreakdown, (value) {
    return _then(_self.copyWith(tunjanganBreakdown: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BpjsBreakdownEntityCopyWith<$Res> get bpjsBreakdown {
  
  return $BpjsBreakdownEntityCopyWith<$Res>(_self.bpjsBreakdown, (value) {
    return _then(_self.copyWith(bpjsBreakdown: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Pph21DetailEntityCopyWith<$Res> get pph21Detail {
  
  return $Pph21DetailEntityCopyWith<$Res>(_self.pph21Detail, (value) {
    return _then(_self.copyWith(pph21Detail: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganDetailEntityCopyWith<$Res> get potonganDetail {
  
  return $PotonganDetailEntityCopyWith<$Res>(_self.potonganDetail, (value) {
    return _then(_self.copyWith(potonganDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [SlipGajiDetailEntity].
extension SlipGajiDetailEntityPatterns on SlipGajiDetailEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlipGajiDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlipGajiDetailEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlipGajiDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _SlipGajiDetailEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlipGajiDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SlipGajiDetailEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String detailId,  String karyawanId,  String namaLengkap,  String jabatan,  String departemen,  int totalHadir,  int totalAlfa,  int totalTidakTepat,  int totalCuti,  int totalIzin,  int totalLembur,  int totalLemburSessions,  int gajiPokok,  int tunjanganTotal,  TunjanganBreakdownEntity tunjanganBreakdown,  BpjsBreakdownEntity bpjsBreakdown,  int lemburPay,  int potonganTotal,  int totalGaji,  int penghasilanBruto,  int penyesuaian,  String? catatanPenyesuaian,  Pph21DetailEntity pph21Detail,  PotonganDetailEntity potonganDetail,  String periodeLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlipGajiDetailEntity() when $default != null:
return $default(_that.detailId,_that.karyawanId,_that.namaLengkap,_that.jabatan,_that.departemen,_that.totalHadir,_that.totalAlfa,_that.totalTidakTepat,_that.totalCuti,_that.totalIzin,_that.totalLembur,_that.totalLemburSessions,_that.gajiPokok,_that.tunjanganTotal,_that.tunjanganBreakdown,_that.bpjsBreakdown,_that.lemburPay,_that.potonganTotal,_that.totalGaji,_that.penghasilanBruto,_that.penyesuaian,_that.catatanPenyesuaian,_that.pph21Detail,_that.potonganDetail,_that.periodeLabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String detailId,  String karyawanId,  String namaLengkap,  String jabatan,  String departemen,  int totalHadir,  int totalAlfa,  int totalTidakTepat,  int totalCuti,  int totalIzin,  int totalLembur,  int totalLemburSessions,  int gajiPokok,  int tunjanganTotal,  TunjanganBreakdownEntity tunjanganBreakdown,  BpjsBreakdownEntity bpjsBreakdown,  int lemburPay,  int potonganTotal,  int totalGaji,  int penghasilanBruto,  int penyesuaian,  String? catatanPenyesuaian,  Pph21DetailEntity pph21Detail,  PotonganDetailEntity potonganDetail,  String periodeLabel)  $default,) {final _that = this;
switch (_that) {
case _SlipGajiDetailEntity():
return $default(_that.detailId,_that.karyawanId,_that.namaLengkap,_that.jabatan,_that.departemen,_that.totalHadir,_that.totalAlfa,_that.totalTidakTepat,_that.totalCuti,_that.totalIzin,_that.totalLembur,_that.totalLemburSessions,_that.gajiPokok,_that.tunjanganTotal,_that.tunjanganBreakdown,_that.bpjsBreakdown,_that.lemburPay,_that.potonganTotal,_that.totalGaji,_that.penghasilanBruto,_that.penyesuaian,_that.catatanPenyesuaian,_that.pph21Detail,_that.potonganDetail,_that.periodeLabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String detailId,  String karyawanId,  String namaLengkap,  String jabatan,  String departemen,  int totalHadir,  int totalAlfa,  int totalTidakTepat,  int totalCuti,  int totalIzin,  int totalLembur,  int totalLemburSessions,  int gajiPokok,  int tunjanganTotal,  TunjanganBreakdownEntity tunjanganBreakdown,  BpjsBreakdownEntity bpjsBreakdown,  int lemburPay,  int potonganTotal,  int totalGaji,  int penghasilanBruto,  int penyesuaian,  String? catatanPenyesuaian,  Pph21DetailEntity pph21Detail,  PotonganDetailEntity potonganDetail,  String periodeLabel)?  $default,) {final _that = this;
switch (_that) {
case _SlipGajiDetailEntity() when $default != null:
return $default(_that.detailId,_that.karyawanId,_that.namaLengkap,_that.jabatan,_that.departemen,_that.totalHadir,_that.totalAlfa,_that.totalTidakTepat,_that.totalCuti,_that.totalIzin,_that.totalLembur,_that.totalLemburSessions,_that.gajiPokok,_that.tunjanganTotal,_that.tunjanganBreakdown,_that.bpjsBreakdown,_that.lemburPay,_that.potonganTotal,_that.totalGaji,_that.penghasilanBruto,_that.penyesuaian,_that.catatanPenyesuaian,_that.pph21Detail,_that.potonganDetail,_that.periodeLabel);case _:
  return null;

}
}

}

/// @nodoc


class _SlipGajiDetailEntity implements SlipGajiDetailEntity {
  const _SlipGajiDetailEntity({required this.detailId, required this.karyawanId, required this.namaLengkap, required this.jabatan, required this.departemen, required this.totalHadir, required this.totalAlfa, required this.totalTidakTepat, required this.totalCuti, required this.totalIzin, required this.totalLembur, required this.totalLemburSessions, required this.gajiPokok, required this.tunjanganTotal, required this.tunjanganBreakdown, required this.bpjsBreakdown, required this.lemburPay, required this.potonganTotal, required this.totalGaji, required this.penghasilanBruto, required this.penyesuaian, this.catatanPenyesuaian, required this.pph21Detail, required this.potonganDetail, required this.periodeLabel});
  

@override final  String detailId;
@override final  String karyawanId;
@override final  String namaLengkap;
@override final  String jabatan;
@override final  String departemen;
@override final  int totalHadir;
@override final  int totalAlfa;
@override final  int totalTidakTepat;
@override final  int totalCuti;
@override final  int totalIzin;
@override final  int totalLembur;
@override final  int totalLemburSessions;
@override final  int gajiPokok;
@override final  int tunjanganTotal;
@override final  TunjanganBreakdownEntity tunjanganBreakdown;
@override final  BpjsBreakdownEntity bpjsBreakdown;
@override final  int lemburPay;
@override final  int potonganTotal;
@override final  int totalGaji;
@override final  int penghasilanBruto;
@override final  int penyesuaian;
@override final  String? catatanPenyesuaian;
@override final  Pph21DetailEntity pph21Detail;
@override final  PotonganDetailEntity potonganDetail;
@override final  String periodeLabel;

/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlipGajiDetailEntityCopyWith<_SlipGajiDetailEntity> get copyWith => __$SlipGajiDetailEntityCopyWithImpl<_SlipGajiDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlipGajiDetailEntity&&(identical(other.detailId, detailId) || other.detailId == detailId)&&(identical(other.karyawanId, karyawanId) || other.karyawanId == karyawanId)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.jabatan, jabatan) || other.jabatan == jabatan)&&(identical(other.departemen, departemen) || other.departemen == departemen)&&(identical(other.totalHadir, totalHadir) || other.totalHadir == totalHadir)&&(identical(other.totalAlfa, totalAlfa) || other.totalAlfa == totalAlfa)&&(identical(other.totalTidakTepat, totalTidakTepat) || other.totalTidakTepat == totalTidakTepat)&&(identical(other.totalCuti, totalCuti) || other.totalCuti == totalCuti)&&(identical(other.totalIzin, totalIzin) || other.totalIzin == totalIzin)&&(identical(other.totalLembur, totalLembur) || other.totalLembur == totalLembur)&&(identical(other.totalLemburSessions, totalLemburSessions) || other.totalLemburSessions == totalLemburSessions)&&(identical(other.gajiPokok, gajiPokok) || other.gajiPokok == gajiPokok)&&(identical(other.tunjanganTotal, tunjanganTotal) || other.tunjanganTotal == tunjanganTotal)&&(identical(other.tunjanganBreakdown, tunjanganBreakdown) || other.tunjanganBreakdown == tunjanganBreakdown)&&(identical(other.bpjsBreakdown, bpjsBreakdown) || other.bpjsBreakdown == bpjsBreakdown)&&(identical(other.lemburPay, lemburPay) || other.lemburPay == lemburPay)&&(identical(other.potonganTotal, potonganTotal) || other.potonganTotal == potonganTotal)&&(identical(other.totalGaji, totalGaji) || other.totalGaji == totalGaji)&&(identical(other.penghasilanBruto, penghasilanBruto) || other.penghasilanBruto == penghasilanBruto)&&(identical(other.penyesuaian, penyesuaian) || other.penyesuaian == penyesuaian)&&(identical(other.catatanPenyesuaian, catatanPenyesuaian) || other.catatanPenyesuaian == catatanPenyesuaian)&&(identical(other.pph21Detail, pph21Detail) || other.pph21Detail == pph21Detail)&&(identical(other.potonganDetail, potonganDetail) || other.potonganDetail == potonganDetail)&&(identical(other.periodeLabel, periodeLabel) || other.periodeLabel == periodeLabel));
}


@override
int get hashCode => Object.hashAll([runtimeType,detailId,karyawanId,namaLengkap,jabatan,departemen,totalHadir,totalAlfa,totalTidakTepat,totalCuti,totalIzin,totalLembur,totalLemburSessions,gajiPokok,tunjanganTotal,tunjanganBreakdown,bpjsBreakdown,lemburPay,potonganTotal,totalGaji,penghasilanBruto,penyesuaian,catatanPenyesuaian,pph21Detail,potonganDetail,periodeLabel]);

@override
String toString() {
  return 'SlipGajiDetailEntity(detailId: $detailId, karyawanId: $karyawanId, namaLengkap: $namaLengkap, jabatan: $jabatan, departemen: $departemen, totalHadir: $totalHadir, totalAlfa: $totalAlfa, totalTidakTepat: $totalTidakTepat, totalCuti: $totalCuti, totalIzin: $totalIzin, totalLembur: $totalLembur, totalLemburSessions: $totalLemburSessions, gajiPokok: $gajiPokok, tunjanganTotal: $tunjanganTotal, tunjanganBreakdown: $tunjanganBreakdown, bpjsBreakdown: $bpjsBreakdown, lemburPay: $lemburPay, potonganTotal: $potonganTotal, totalGaji: $totalGaji, penghasilanBruto: $penghasilanBruto, penyesuaian: $penyesuaian, catatanPenyesuaian: $catatanPenyesuaian, pph21Detail: $pph21Detail, potonganDetail: $potonganDetail, periodeLabel: $periodeLabel)';
}


}

/// @nodoc
abstract mixin class _$SlipGajiDetailEntityCopyWith<$Res> implements $SlipGajiDetailEntityCopyWith<$Res> {
  factory _$SlipGajiDetailEntityCopyWith(_SlipGajiDetailEntity value, $Res Function(_SlipGajiDetailEntity) _then) = __$SlipGajiDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String detailId, String karyawanId, String namaLengkap, String jabatan, String departemen, int totalHadir, int totalAlfa, int totalTidakTepat, int totalCuti, int totalIzin, int totalLembur, int totalLemburSessions, int gajiPokok, int tunjanganTotal, TunjanganBreakdownEntity tunjanganBreakdown, BpjsBreakdownEntity bpjsBreakdown, int lemburPay, int potonganTotal, int totalGaji, int penghasilanBruto, int penyesuaian, String? catatanPenyesuaian, Pph21DetailEntity pph21Detail, PotonganDetailEntity potonganDetail, String periodeLabel
});


@override $TunjanganBreakdownEntityCopyWith<$Res> get tunjanganBreakdown;@override $BpjsBreakdownEntityCopyWith<$Res> get bpjsBreakdown;@override $Pph21DetailEntityCopyWith<$Res> get pph21Detail;@override $PotonganDetailEntityCopyWith<$Res> get potonganDetail;

}
/// @nodoc
class __$SlipGajiDetailEntityCopyWithImpl<$Res>
    implements _$SlipGajiDetailEntityCopyWith<$Res> {
  __$SlipGajiDetailEntityCopyWithImpl(this._self, this._then);

  final _SlipGajiDetailEntity _self;
  final $Res Function(_SlipGajiDetailEntity) _then;

/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detailId = null,Object? karyawanId = null,Object? namaLengkap = null,Object? jabatan = null,Object? departemen = null,Object? totalHadir = null,Object? totalAlfa = null,Object? totalTidakTepat = null,Object? totalCuti = null,Object? totalIzin = null,Object? totalLembur = null,Object? totalLemburSessions = null,Object? gajiPokok = null,Object? tunjanganTotal = null,Object? tunjanganBreakdown = null,Object? bpjsBreakdown = null,Object? lemburPay = null,Object? potonganTotal = null,Object? totalGaji = null,Object? penghasilanBruto = null,Object? penyesuaian = null,Object? catatanPenyesuaian = freezed,Object? pph21Detail = null,Object? potonganDetail = null,Object? periodeLabel = null,}) {
  return _then(_SlipGajiDetailEntity(
detailId: null == detailId ? _self.detailId : detailId // ignore: cast_nullable_to_non_nullable
as String,karyawanId: null == karyawanId ? _self.karyawanId : karyawanId // ignore: cast_nullable_to_non_nullable
as String,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,jabatan: null == jabatan ? _self.jabatan : jabatan // ignore: cast_nullable_to_non_nullable
as String,departemen: null == departemen ? _self.departemen : departemen // ignore: cast_nullable_to_non_nullable
as String,totalHadir: null == totalHadir ? _self.totalHadir : totalHadir // ignore: cast_nullable_to_non_nullable
as int,totalAlfa: null == totalAlfa ? _self.totalAlfa : totalAlfa // ignore: cast_nullable_to_non_nullable
as int,totalTidakTepat: null == totalTidakTepat ? _self.totalTidakTepat : totalTidakTepat // ignore: cast_nullable_to_non_nullable
as int,totalCuti: null == totalCuti ? _self.totalCuti : totalCuti // ignore: cast_nullable_to_non_nullable
as int,totalIzin: null == totalIzin ? _self.totalIzin : totalIzin // ignore: cast_nullable_to_non_nullable
as int,totalLembur: null == totalLembur ? _self.totalLembur : totalLembur // ignore: cast_nullable_to_non_nullable
as int,totalLemburSessions: null == totalLemburSessions ? _self.totalLemburSessions : totalLemburSessions // ignore: cast_nullable_to_non_nullable
as int,gajiPokok: null == gajiPokok ? _self.gajiPokok : gajiPokok // ignore: cast_nullable_to_non_nullable
as int,tunjanganTotal: null == tunjanganTotal ? _self.tunjanganTotal : tunjanganTotal // ignore: cast_nullable_to_non_nullable
as int,tunjanganBreakdown: null == tunjanganBreakdown ? _self.tunjanganBreakdown : tunjanganBreakdown // ignore: cast_nullable_to_non_nullable
as TunjanganBreakdownEntity,bpjsBreakdown: null == bpjsBreakdown ? _self.bpjsBreakdown : bpjsBreakdown // ignore: cast_nullable_to_non_nullable
as BpjsBreakdownEntity,lemburPay: null == lemburPay ? _self.lemburPay : lemburPay // ignore: cast_nullable_to_non_nullable
as int,potonganTotal: null == potonganTotal ? _self.potonganTotal : potonganTotal // ignore: cast_nullable_to_non_nullable
as int,totalGaji: null == totalGaji ? _self.totalGaji : totalGaji // ignore: cast_nullable_to_non_nullable
as int,penghasilanBruto: null == penghasilanBruto ? _self.penghasilanBruto : penghasilanBruto // ignore: cast_nullable_to_non_nullable
as int,penyesuaian: null == penyesuaian ? _self.penyesuaian : penyesuaian // ignore: cast_nullable_to_non_nullable
as int,catatanPenyesuaian: freezed == catatanPenyesuaian ? _self.catatanPenyesuaian : catatanPenyesuaian // ignore: cast_nullable_to_non_nullable
as String?,pph21Detail: null == pph21Detail ? _self.pph21Detail : pph21Detail // ignore: cast_nullable_to_non_nullable
as Pph21DetailEntity,potonganDetail: null == potonganDetail ? _self.potonganDetail : potonganDetail // ignore: cast_nullable_to_non_nullable
as PotonganDetailEntity,periodeLabel: null == periodeLabel ? _self.periodeLabel : periodeLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TunjanganBreakdownEntityCopyWith<$Res> get tunjanganBreakdown {
  
  return $TunjanganBreakdownEntityCopyWith<$Res>(_self.tunjanganBreakdown, (value) {
    return _then(_self.copyWith(tunjanganBreakdown: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BpjsBreakdownEntityCopyWith<$Res> get bpjsBreakdown {
  
  return $BpjsBreakdownEntityCopyWith<$Res>(_self.bpjsBreakdown, (value) {
    return _then(_self.copyWith(bpjsBreakdown: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Pph21DetailEntityCopyWith<$Res> get pph21Detail {
  
  return $Pph21DetailEntityCopyWith<$Res>(_self.pph21Detail, (value) {
    return _then(_self.copyWith(pph21Detail: value));
  });
}/// Create a copy of SlipGajiDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganDetailEntityCopyWith<$Res> get potonganDetail {
  
  return $PotonganDetailEntityCopyWith<$Res>(_self.potonganDetail, (value) {
    return _then(_self.copyWith(potonganDetail: value));
  });
}
}

/// @nodoc
mixin _$TunjanganBreakdownEntity {

 List<TunjanganBreakdownItemEntity> get breakdown; int get total; TunjanganComplianceEntity get compliance;
/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TunjanganBreakdownEntityCopyWith<TunjanganBreakdownEntity> get copyWith => _$TunjanganBreakdownEntityCopyWithImpl<TunjanganBreakdownEntity>(this as TunjanganBreakdownEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TunjanganBreakdownEntity&&const DeepCollectionEquality().equals(other.breakdown, breakdown)&&(identical(other.total, total) || other.total == total)&&(identical(other.compliance, compliance) || other.compliance == compliance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(breakdown),total,compliance);

@override
String toString() {
  return 'TunjanganBreakdownEntity(breakdown: $breakdown, total: $total, compliance: $compliance)';
}


}

/// @nodoc
abstract mixin class $TunjanganBreakdownEntityCopyWith<$Res>  {
  factory $TunjanganBreakdownEntityCopyWith(TunjanganBreakdownEntity value, $Res Function(TunjanganBreakdownEntity) _then) = _$TunjanganBreakdownEntityCopyWithImpl;
@useResult
$Res call({
 List<TunjanganBreakdownItemEntity> breakdown, int total, TunjanganComplianceEntity compliance
});


$TunjanganComplianceEntityCopyWith<$Res> get compliance;

}
/// @nodoc
class _$TunjanganBreakdownEntityCopyWithImpl<$Res>
    implements $TunjanganBreakdownEntityCopyWith<$Res> {
  _$TunjanganBreakdownEntityCopyWithImpl(this._self, this._then);

  final TunjanganBreakdownEntity _self;
  final $Res Function(TunjanganBreakdownEntity) _then;

/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? breakdown = null,Object? total = null,Object? compliance = null,}) {
  return _then(_self.copyWith(
breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as List<TunjanganBreakdownItemEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,compliance: null == compliance ? _self.compliance : compliance // ignore: cast_nullable_to_non_nullable
as TunjanganComplianceEntity,
  ));
}
/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TunjanganComplianceEntityCopyWith<$Res> get compliance {
  
  return $TunjanganComplianceEntityCopyWith<$Res>(_self.compliance, (value) {
    return _then(_self.copyWith(compliance: value));
  });
}
}


/// Adds pattern-matching-related methods to [TunjanganBreakdownEntity].
extension TunjanganBreakdownEntityPatterns on TunjanganBreakdownEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TunjanganBreakdownEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TunjanganBreakdownEntity value)  $default,){
final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TunjanganBreakdownEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TunjanganBreakdownItemEntity> breakdown,  int total,  TunjanganComplianceEntity compliance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity() when $default != null:
return $default(_that.breakdown,_that.total,_that.compliance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TunjanganBreakdownItemEntity> breakdown,  int total,  TunjanganComplianceEntity compliance)  $default,) {final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity():
return $default(_that.breakdown,_that.total,_that.compliance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TunjanganBreakdownItemEntity> breakdown,  int total,  TunjanganComplianceEntity compliance)?  $default,) {final _that = this;
switch (_that) {
case _TunjanganBreakdownEntity() when $default != null:
return $default(_that.breakdown,_that.total,_that.compliance);case _:
  return null;

}
}

}

/// @nodoc


class _TunjanganBreakdownEntity implements TunjanganBreakdownEntity {
  const _TunjanganBreakdownEntity({required final  List<TunjanganBreakdownItemEntity> breakdown, required this.total, required this.compliance}): _breakdown = breakdown;
  

 final  List<TunjanganBreakdownItemEntity> _breakdown;
@override List<TunjanganBreakdownItemEntity> get breakdown {
  if (_breakdown is EqualUnmodifiableListView) return _breakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breakdown);
}

@override final  int total;
@override final  TunjanganComplianceEntity compliance;

/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TunjanganBreakdownEntityCopyWith<_TunjanganBreakdownEntity> get copyWith => __$TunjanganBreakdownEntityCopyWithImpl<_TunjanganBreakdownEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TunjanganBreakdownEntity&&const DeepCollectionEquality().equals(other._breakdown, _breakdown)&&(identical(other.total, total) || other.total == total)&&(identical(other.compliance, compliance) || other.compliance == compliance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_breakdown),total,compliance);

@override
String toString() {
  return 'TunjanganBreakdownEntity(breakdown: $breakdown, total: $total, compliance: $compliance)';
}


}

/// @nodoc
abstract mixin class _$TunjanganBreakdownEntityCopyWith<$Res> implements $TunjanganBreakdownEntityCopyWith<$Res> {
  factory _$TunjanganBreakdownEntityCopyWith(_TunjanganBreakdownEntity value, $Res Function(_TunjanganBreakdownEntity) _then) = __$TunjanganBreakdownEntityCopyWithImpl;
@override @useResult
$Res call({
 List<TunjanganBreakdownItemEntity> breakdown, int total, TunjanganComplianceEntity compliance
});


@override $TunjanganComplianceEntityCopyWith<$Res> get compliance;

}
/// @nodoc
class __$TunjanganBreakdownEntityCopyWithImpl<$Res>
    implements _$TunjanganBreakdownEntityCopyWith<$Res> {
  __$TunjanganBreakdownEntityCopyWithImpl(this._self, this._then);

  final _TunjanganBreakdownEntity _self;
  final $Res Function(_TunjanganBreakdownEntity) _then;

/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? breakdown = null,Object? total = null,Object? compliance = null,}) {
  return _then(_TunjanganBreakdownEntity(
breakdown: null == breakdown ? _self._breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as List<TunjanganBreakdownItemEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,compliance: null == compliance ? _self.compliance : compliance // ignore: cast_nullable_to_non_nullable
as TunjanganComplianceEntity,
  ));
}

/// Create a copy of TunjanganBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TunjanganComplianceEntityCopyWith<$Res> get compliance {
  
  return $TunjanganComplianceEntityCopyWith<$Res>(_self.compliance, (value) {
    return _then(_self.copyWith(compliance: value));
  });
}
}

/// @nodoc
mixin _$TunjanganBreakdownItemEntity {

 String get type; String get label; int get amount; String get description;
/// Create a copy of TunjanganBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TunjanganBreakdownItemEntityCopyWith<TunjanganBreakdownItemEntity> get copyWith => _$TunjanganBreakdownItemEntityCopyWithImpl<TunjanganBreakdownItemEntity>(this as TunjanganBreakdownItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TunjanganBreakdownItemEntity&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,type,label,amount,description);

@override
String toString() {
  return 'TunjanganBreakdownItemEntity(type: $type, label: $label, amount: $amount, description: $description)';
}


}

/// @nodoc
abstract mixin class $TunjanganBreakdownItemEntityCopyWith<$Res>  {
  factory $TunjanganBreakdownItemEntityCopyWith(TunjanganBreakdownItemEntity value, $Res Function(TunjanganBreakdownItemEntity) _then) = _$TunjanganBreakdownItemEntityCopyWithImpl;
@useResult
$Res call({
 String type, String label, int amount, String description
});




}
/// @nodoc
class _$TunjanganBreakdownItemEntityCopyWithImpl<$Res>
    implements $TunjanganBreakdownItemEntityCopyWith<$Res> {
  _$TunjanganBreakdownItemEntityCopyWithImpl(this._self, this._then);

  final TunjanganBreakdownItemEntity _self;
  final $Res Function(TunjanganBreakdownItemEntity) _then;

/// Create a copy of TunjanganBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? label = null,Object? amount = null,Object? description = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TunjanganBreakdownItemEntity].
extension TunjanganBreakdownItemEntityPatterns on TunjanganBreakdownItemEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TunjanganBreakdownItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TunjanganBreakdownItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TunjanganBreakdownItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String label,  int amount,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity() when $default != null:
return $default(_that.type,_that.label,_that.amount,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String label,  int amount,  String description)  $default,) {final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity():
return $default(_that.type,_that.label,_that.amount,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String label,  int amount,  String description)?  $default,) {final _that = this;
switch (_that) {
case _TunjanganBreakdownItemEntity() when $default != null:
return $default(_that.type,_that.label,_that.amount,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _TunjanganBreakdownItemEntity implements TunjanganBreakdownItemEntity {
  const _TunjanganBreakdownItemEntity({required this.type, required this.label, required this.amount, required this.description});
  

@override final  String type;
@override final  String label;
@override final  int amount;
@override final  String description;

/// Create a copy of TunjanganBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TunjanganBreakdownItemEntityCopyWith<_TunjanganBreakdownItemEntity> get copyWith => __$TunjanganBreakdownItemEntityCopyWithImpl<_TunjanganBreakdownItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TunjanganBreakdownItemEntity&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,type,label,amount,description);

@override
String toString() {
  return 'TunjanganBreakdownItemEntity(type: $type, label: $label, amount: $amount, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TunjanganBreakdownItemEntityCopyWith<$Res> implements $TunjanganBreakdownItemEntityCopyWith<$Res> {
  factory _$TunjanganBreakdownItemEntityCopyWith(_TunjanganBreakdownItemEntity value, $Res Function(_TunjanganBreakdownItemEntity) _then) = __$TunjanganBreakdownItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String type, String label, int amount, String description
});




}
/// @nodoc
class __$TunjanganBreakdownItemEntityCopyWithImpl<$Res>
    implements _$TunjanganBreakdownItemEntityCopyWith<$Res> {
  __$TunjanganBreakdownItemEntityCopyWithImpl(this._self, this._then);

  final _TunjanganBreakdownItemEntity _self;
  final $Res Function(_TunjanganBreakdownItemEntity) _then;

/// Create a copy of TunjanganBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? label = null,Object? amount = null,Object? description = null,}) {
  return _then(_TunjanganBreakdownItemEntity(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TunjanganComplianceEntity {

 bool get isCompliant; int get percentage; int get totalGaji; String get message;
/// Create a copy of TunjanganComplianceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TunjanganComplianceEntityCopyWith<TunjanganComplianceEntity> get copyWith => _$TunjanganComplianceEntityCopyWithImpl<TunjanganComplianceEntity>(this as TunjanganComplianceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TunjanganComplianceEntity&&(identical(other.isCompliant, isCompliant) || other.isCompliant == isCompliant)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.totalGaji, totalGaji) || other.totalGaji == totalGaji)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,isCompliant,percentage,totalGaji,message);

@override
String toString() {
  return 'TunjanganComplianceEntity(isCompliant: $isCompliant, percentage: $percentage, totalGaji: $totalGaji, message: $message)';
}


}

/// @nodoc
abstract mixin class $TunjanganComplianceEntityCopyWith<$Res>  {
  factory $TunjanganComplianceEntityCopyWith(TunjanganComplianceEntity value, $Res Function(TunjanganComplianceEntity) _then) = _$TunjanganComplianceEntityCopyWithImpl;
@useResult
$Res call({
 bool isCompliant, int percentage, int totalGaji, String message
});




}
/// @nodoc
class _$TunjanganComplianceEntityCopyWithImpl<$Res>
    implements $TunjanganComplianceEntityCopyWith<$Res> {
  _$TunjanganComplianceEntityCopyWithImpl(this._self, this._then);

  final TunjanganComplianceEntity _self;
  final $Res Function(TunjanganComplianceEntity) _then;

/// Create a copy of TunjanganComplianceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCompliant = null,Object? percentage = null,Object? totalGaji = null,Object? message = null,}) {
  return _then(_self.copyWith(
isCompliant: null == isCompliant ? _self.isCompliant : isCompliant // ignore: cast_nullable_to_non_nullable
as bool,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as int,totalGaji: null == totalGaji ? _self.totalGaji : totalGaji // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TunjanganComplianceEntity].
extension TunjanganComplianceEntityPatterns on TunjanganComplianceEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TunjanganComplianceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TunjanganComplianceEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TunjanganComplianceEntity value)  $default,){
final _that = this;
switch (_that) {
case _TunjanganComplianceEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TunjanganComplianceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TunjanganComplianceEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCompliant,  int percentage,  int totalGaji,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TunjanganComplianceEntity() when $default != null:
return $default(_that.isCompliant,_that.percentage,_that.totalGaji,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCompliant,  int percentage,  int totalGaji,  String message)  $default,) {final _that = this;
switch (_that) {
case _TunjanganComplianceEntity():
return $default(_that.isCompliant,_that.percentage,_that.totalGaji,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCompliant,  int percentage,  int totalGaji,  String message)?  $default,) {final _that = this;
switch (_that) {
case _TunjanganComplianceEntity() when $default != null:
return $default(_that.isCompliant,_that.percentage,_that.totalGaji,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TunjanganComplianceEntity implements TunjanganComplianceEntity {
  const _TunjanganComplianceEntity({required this.isCompliant, required this.percentage, required this.totalGaji, required this.message});
  

@override final  bool isCompliant;
@override final  int percentage;
@override final  int totalGaji;
@override final  String message;

/// Create a copy of TunjanganComplianceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TunjanganComplianceEntityCopyWith<_TunjanganComplianceEntity> get copyWith => __$TunjanganComplianceEntityCopyWithImpl<_TunjanganComplianceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TunjanganComplianceEntity&&(identical(other.isCompliant, isCompliant) || other.isCompliant == isCompliant)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.totalGaji, totalGaji) || other.totalGaji == totalGaji)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,isCompliant,percentage,totalGaji,message);

@override
String toString() {
  return 'TunjanganComplianceEntity(isCompliant: $isCompliant, percentage: $percentage, totalGaji: $totalGaji, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TunjanganComplianceEntityCopyWith<$Res> implements $TunjanganComplianceEntityCopyWith<$Res> {
  factory _$TunjanganComplianceEntityCopyWith(_TunjanganComplianceEntity value, $Res Function(_TunjanganComplianceEntity) _then) = __$TunjanganComplianceEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isCompliant, int percentage, int totalGaji, String message
});




}
/// @nodoc
class __$TunjanganComplianceEntityCopyWithImpl<$Res>
    implements _$TunjanganComplianceEntityCopyWith<$Res> {
  __$TunjanganComplianceEntityCopyWithImpl(this._self, this._then);

  final _TunjanganComplianceEntity _self;
  final $Res Function(_TunjanganComplianceEntity) _then;

/// Create a copy of TunjanganComplianceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCompliant = null,Object? percentage = null,Object? totalGaji = null,Object? message = null,}) {
  return _then(_TunjanganComplianceEntity(
isCompliant: null == isCompliant ? _self.isCompliant : isCompliant // ignore: cast_nullable_to_non_nullable
as bool,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as int,totalGaji: null == totalGaji ? _self.totalGaji : totalGaji // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BpjsBreakdownEntity {

 List<BpjsBreakdownItemEntity> get breakdown; int get totalAmount;
/// Create a copy of BpjsBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BpjsBreakdownEntityCopyWith<BpjsBreakdownEntity> get copyWith => _$BpjsBreakdownEntityCopyWithImpl<BpjsBreakdownEntity>(this as BpjsBreakdownEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BpjsBreakdownEntity&&const DeepCollectionEquality().equals(other.breakdown, breakdown)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(breakdown),totalAmount);

@override
String toString() {
  return 'BpjsBreakdownEntity(breakdown: $breakdown, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $BpjsBreakdownEntityCopyWith<$Res>  {
  factory $BpjsBreakdownEntityCopyWith(BpjsBreakdownEntity value, $Res Function(BpjsBreakdownEntity) _then) = _$BpjsBreakdownEntityCopyWithImpl;
@useResult
$Res call({
 List<BpjsBreakdownItemEntity> breakdown, int totalAmount
});




}
/// @nodoc
class _$BpjsBreakdownEntityCopyWithImpl<$Res>
    implements $BpjsBreakdownEntityCopyWith<$Res> {
  _$BpjsBreakdownEntityCopyWithImpl(this._self, this._then);

  final BpjsBreakdownEntity _self;
  final $Res Function(BpjsBreakdownEntity) _then;

/// Create a copy of BpjsBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? breakdown = null,Object? totalAmount = null,}) {
  return _then(_self.copyWith(
breakdown: null == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as List<BpjsBreakdownItemEntity>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BpjsBreakdownEntity].
extension BpjsBreakdownEntityPatterns on BpjsBreakdownEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BpjsBreakdownEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BpjsBreakdownEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BpjsBreakdownEntity value)  $default,){
final _that = this;
switch (_that) {
case _BpjsBreakdownEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BpjsBreakdownEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BpjsBreakdownEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BpjsBreakdownItemEntity> breakdown,  int totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BpjsBreakdownEntity() when $default != null:
return $default(_that.breakdown,_that.totalAmount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BpjsBreakdownItemEntity> breakdown,  int totalAmount)  $default,) {final _that = this;
switch (_that) {
case _BpjsBreakdownEntity():
return $default(_that.breakdown,_that.totalAmount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BpjsBreakdownItemEntity> breakdown,  int totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _BpjsBreakdownEntity() when $default != null:
return $default(_that.breakdown,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc


class _BpjsBreakdownEntity implements BpjsBreakdownEntity {
  const _BpjsBreakdownEntity({required final  List<BpjsBreakdownItemEntity> breakdown, required this.totalAmount}): _breakdown = breakdown;
  

 final  List<BpjsBreakdownItemEntity> _breakdown;
@override List<BpjsBreakdownItemEntity> get breakdown {
  if (_breakdown is EqualUnmodifiableListView) return _breakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breakdown);
}

@override final  int totalAmount;

/// Create a copy of BpjsBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BpjsBreakdownEntityCopyWith<_BpjsBreakdownEntity> get copyWith => __$BpjsBreakdownEntityCopyWithImpl<_BpjsBreakdownEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BpjsBreakdownEntity&&const DeepCollectionEquality().equals(other._breakdown, _breakdown)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_breakdown),totalAmount);

@override
String toString() {
  return 'BpjsBreakdownEntity(breakdown: $breakdown, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$BpjsBreakdownEntityCopyWith<$Res> implements $BpjsBreakdownEntityCopyWith<$Res> {
  factory _$BpjsBreakdownEntityCopyWith(_BpjsBreakdownEntity value, $Res Function(_BpjsBreakdownEntity) _then) = __$BpjsBreakdownEntityCopyWithImpl;
@override @useResult
$Res call({
 List<BpjsBreakdownItemEntity> breakdown, int totalAmount
});




}
/// @nodoc
class __$BpjsBreakdownEntityCopyWithImpl<$Res>
    implements _$BpjsBreakdownEntityCopyWith<$Res> {
  __$BpjsBreakdownEntityCopyWithImpl(this._self, this._then);

  final _BpjsBreakdownEntity _self;
  final $Res Function(_BpjsBreakdownEntity) _then;

/// Create a copy of BpjsBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? breakdown = null,Object? totalAmount = null,}) {
  return _then(_BpjsBreakdownEntity(
breakdown: null == breakdown ? _self._breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as List<BpjsBreakdownItemEntity>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$BpjsBreakdownItemEntity {

 String get label; int get amount; String get description;
/// Create a copy of BpjsBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BpjsBreakdownItemEntityCopyWith<BpjsBreakdownItemEntity> get copyWith => _$BpjsBreakdownItemEntityCopyWithImpl<BpjsBreakdownItemEntity>(this as BpjsBreakdownItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BpjsBreakdownItemEntity&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,label,amount,description);

@override
String toString() {
  return 'BpjsBreakdownItemEntity(label: $label, amount: $amount, description: $description)';
}


}

/// @nodoc
abstract mixin class $BpjsBreakdownItemEntityCopyWith<$Res>  {
  factory $BpjsBreakdownItemEntityCopyWith(BpjsBreakdownItemEntity value, $Res Function(BpjsBreakdownItemEntity) _then) = _$BpjsBreakdownItemEntityCopyWithImpl;
@useResult
$Res call({
 String label, int amount, String description
});




}
/// @nodoc
class _$BpjsBreakdownItemEntityCopyWithImpl<$Res>
    implements $BpjsBreakdownItemEntityCopyWith<$Res> {
  _$BpjsBreakdownItemEntityCopyWithImpl(this._self, this._then);

  final BpjsBreakdownItemEntity _self;
  final $Res Function(BpjsBreakdownItemEntity) _then;

/// Create a copy of BpjsBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? amount = null,Object? description = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BpjsBreakdownItemEntity].
extension BpjsBreakdownItemEntityPatterns on BpjsBreakdownItemEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BpjsBreakdownItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BpjsBreakdownItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BpjsBreakdownItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  int amount,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity() when $default != null:
return $default(_that.label,_that.amount,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  int amount,  String description)  $default,) {final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity():
return $default(_that.label,_that.amount,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  int amount,  String description)?  $default,) {final _that = this;
switch (_that) {
case _BpjsBreakdownItemEntity() when $default != null:
return $default(_that.label,_that.amount,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _BpjsBreakdownItemEntity implements BpjsBreakdownItemEntity {
  const _BpjsBreakdownItemEntity({required this.label, required this.amount, required this.description});
  

@override final  String label;
@override final  int amount;
@override final  String description;

/// Create a copy of BpjsBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BpjsBreakdownItemEntityCopyWith<_BpjsBreakdownItemEntity> get copyWith => __$BpjsBreakdownItemEntityCopyWithImpl<_BpjsBreakdownItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BpjsBreakdownItemEntity&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,label,amount,description);

@override
String toString() {
  return 'BpjsBreakdownItemEntity(label: $label, amount: $amount, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BpjsBreakdownItemEntityCopyWith<$Res> implements $BpjsBreakdownItemEntityCopyWith<$Res> {
  factory _$BpjsBreakdownItemEntityCopyWith(_BpjsBreakdownItemEntity value, $Res Function(_BpjsBreakdownItemEntity) _then) = __$BpjsBreakdownItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String label, int amount, String description
});




}
/// @nodoc
class __$BpjsBreakdownItemEntityCopyWithImpl<$Res>
    implements _$BpjsBreakdownItemEntityCopyWith<$Res> {
  __$BpjsBreakdownItemEntityCopyWithImpl(this._self, this._then);

  final _BpjsBreakdownItemEntity _self;
  final $Res Function(_BpjsBreakdownItemEntity) _then;

/// Create a copy of BpjsBreakdownItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? amount = null,Object? description = null,}) {
  return _then(_BpjsBreakdownItemEntity(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Pph21DetailEntity {

 int get jumlah; String get tarifPersen; String get golonganPtkp; String get kategoriTer; int get penghasilanBruto;
/// Create a copy of Pph21DetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Pph21DetailEntityCopyWith<Pph21DetailEntity> get copyWith => _$Pph21DetailEntityCopyWithImpl<Pph21DetailEntity>(this as Pph21DetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pph21DetailEntity&&(identical(other.jumlah, jumlah) || other.jumlah == jumlah)&&(identical(other.tarifPersen, tarifPersen) || other.tarifPersen == tarifPersen)&&(identical(other.golonganPtkp, golonganPtkp) || other.golonganPtkp == golonganPtkp)&&(identical(other.kategoriTer, kategoriTer) || other.kategoriTer == kategoriTer)&&(identical(other.penghasilanBruto, penghasilanBruto) || other.penghasilanBruto == penghasilanBruto));
}


@override
int get hashCode => Object.hash(runtimeType,jumlah,tarifPersen,golonganPtkp,kategoriTer,penghasilanBruto);

@override
String toString() {
  return 'Pph21DetailEntity(jumlah: $jumlah, tarifPersen: $tarifPersen, golonganPtkp: $golonganPtkp, kategoriTer: $kategoriTer, penghasilanBruto: $penghasilanBruto)';
}


}

/// @nodoc
abstract mixin class $Pph21DetailEntityCopyWith<$Res>  {
  factory $Pph21DetailEntityCopyWith(Pph21DetailEntity value, $Res Function(Pph21DetailEntity) _then) = _$Pph21DetailEntityCopyWithImpl;
@useResult
$Res call({
 int jumlah, String tarifPersen, String golonganPtkp, String kategoriTer, int penghasilanBruto
});




}
/// @nodoc
class _$Pph21DetailEntityCopyWithImpl<$Res>
    implements $Pph21DetailEntityCopyWith<$Res> {
  _$Pph21DetailEntityCopyWithImpl(this._self, this._then);

  final Pph21DetailEntity _self;
  final $Res Function(Pph21DetailEntity) _then;

/// Create a copy of Pph21DetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jumlah = null,Object? tarifPersen = null,Object? golonganPtkp = null,Object? kategoriTer = null,Object? penghasilanBruto = null,}) {
  return _then(_self.copyWith(
jumlah: null == jumlah ? _self.jumlah : jumlah // ignore: cast_nullable_to_non_nullable
as int,tarifPersen: null == tarifPersen ? _self.tarifPersen : tarifPersen // ignore: cast_nullable_to_non_nullable
as String,golonganPtkp: null == golonganPtkp ? _self.golonganPtkp : golonganPtkp // ignore: cast_nullable_to_non_nullable
as String,kategoriTer: null == kategoriTer ? _self.kategoriTer : kategoriTer // ignore: cast_nullable_to_non_nullable
as String,penghasilanBruto: null == penghasilanBruto ? _self.penghasilanBruto : penghasilanBruto // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pph21DetailEntity].
extension Pph21DetailEntityPatterns on Pph21DetailEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pph21DetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pph21DetailEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pph21DetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _Pph21DetailEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pph21DetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _Pph21DetailEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int jumlah,  String tarifPersen,  String golonganPtkp,  String kategoriTer,  int penghasilanBruto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pph21DetailEntity() when $default != null:
return $default(_that.jumlah,_that.tarifPersen,_that.golonganPtkp,_that.kategoriTer,_that.penghasilanBruto);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int jumlah,  String tarifPersen,  String golonganPtkp,  String kategoriTer,  int penghasilanBruto)  $default,) {final _that = this;
switch (_that) {
case _Pph21DetailEntity():
return $default(_that.jumlah,_that.tarifPersen,_that.golonganPtkp,_that.kategoriTer,_that.penghasilanBruto);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int jumlah,  String tarifPersen,  String golonganPtkp,  String kategoriTer,  int penghasilanBruto)?  $default,) {final _that = this;
switch (_that) {
case _Pph21DetailEntity() when $default != null:
return $default(_that.jumlah,_that.tarifPersen,_that.golonganPtkp,_that.kategoriTer,_that.penghasilanBruto);case _:
  return null;

}
}

}

/// @nodoc


class _Pph21DetailEntity implements Pph21DetailEntity {
  const _Pph21DetailEntity({required this.jumlah, required this.tarifPersen, required this.golonganPtkp, required this.kategoriTer, required this.penghasilanBruto});
  

@override final  int jumlah;
@override final  String tarifPersen;
@override final  String golonganPtkp;
@override final  String kategoriTer;
@override final  int penghasilanBruto;

/// Create a copy of Pph21DetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Pph21DetailEntityCopyWith<_Pph21DetailEntity> get copyWith => __$Pph21DetailEntityCopyWithImpl<_Pph21DetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pph21DetailEntity&&(identical(other.jumlah, jumlah) || other.jumlah == jumlah)&&(identical(other.tarifPersen, tarifPersen) || other.tarifPersen == tarifPersen)&&(identical(other.golonganPtkp, golonganPtkp) || other.golonganPtkp == golonganPtkp)&&(identical(other.kategoriTer, kategoriTer) || other.kategoriTer == kategoriTer)&&(identical(other.penghasilanBruto, penghasilanBruto) || other.penghasilanBruto == penghasilanBruto));
}


@override
int get hashCode => Object.hash(runtimeType,jumlah,tarifPersen,golonganPtkp,kategoriTer,penghasilanBruto);

@override
String toString() {
  return 'Pph21DetailEntity(jumlah: $jumlah, tarifPersen: $tarifPersen, golonganPtkp: $golonganPtkp, kategoriTer: $kategoriTer, penghasilanBruto: $penghasilanBruto)';
}


}

/// @nodoc
abstract mixin class _$Pph21DetailEntityCopyWith<$Res> implements $Pph21DetailEntityCopyWith<$Res> {
  factory _$Pph21DetailEntityCopyWith(_Pph21DetailEntity value, $Res Function(_Pph21DetailEntity) _then) = __$Pph21DetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int jumlah, String tarifPersen, String golonganPtkp, String kategoriTer, int penghasilanBruto
});




}
/// @nodoc
class __$Pph21DetailEntityCopyWithImpl<$Res>
    implements _$Pph21DetailEntityCopyWith<$Res> {
  __$Pph21DetailEntityCopyWithImpl(this._self, this._then);

  final _Pph21DetailEntity _self;
  final $Res Function(_Pph21DetailEntity) _then;

/// Create a copy of Pph21DetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jumlah = null,Object? tarifPersen = null,Object? golonganPtkp = null,Object? kategoriTer = null,Object? penghasilanBruto = null,}) {
  return _then(_Pph21DetailEntity(
jumlah: null == jumlah ? _self.jumlah : jumlah // ignore: cast_nullable_to_non_nullable
as int,tarifPersen: null == tarifPersen ? _self.tarifPersen : tarifPersen // ignore: cast_nullable_to_non_nullable
as String,golonganPtkp: null == golonganPtkp ? _self.golonganPtkp : golonganPtkp // ignore: cast_nullable_to_non_nullable
as String,kategoriTer: null == kategoriTer ? _self.kategoriTer : kategoriTer // ignore: cast_nullable_to_non_nullable
as String,penghasilanBruto: null == penghasilanBruto ? _self.penghasilanBruto : penghasilanBruto // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PotonganDetailEntity {

 PotonganSummaryEntity get alfa; PotonganSummaryEntity get keterlambatan; int get bpjs; int get pph21;
/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PotonganDetailEntityCopyWith<PotonganDetailEntity> get copyWith => _$PotonganDetailEntityCopyWithImpl<PotonganDetailEntity>(this as PotonganDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PotonganDetailEntity&&(identical(other.alfa, alfa) || other.alfa == alfa)&&(identical(other.keterlambatan, keterlambatan) || other.keterlambatan == keterlambatan)&&(identical(other.bpjs, bpjs) || other.bpjs == bpjs)&&(identical(other.pph21, pph21) || other.pph21 == pph21));
}


@override
int get hashCode => Object.hash(runtimeType,alfa,keterlambatan,bpjs,pph21);

@override
String toString() {
  return 'PotonganDetailEntity(alfa: $alfa, keterlambatan: $keterlambatan, bpjs: $bpjs, pph21: $pph21)';
}


}

/// @nodoc
abstract mixin class $PotonganDetailEntityCopyWith<$Res>  {
  factory $PotonganDetailEntityCopyWith(PotonganDetailEntity value, $Res Function(PotonganDetailEntity) _then) = _$PotonganDetailEntityCopyWithImpl;
@useResult
$Res call({
 PotonganSummaryEntity alfa, PotonganSummaryEntity keterlambatan, int bpjs, int pph21
});


$PotonganSummaryEntityCopyWith<$Res> get alfa;$PotonganSummaryEntityCopyWith<$Res> get keterlambatan;

}
/// @nodoc
class _$PotonganDetailEntityCopyWithImpl<$Res>
    implements $PotonganDetailEntityCopyWith<$Res> {
  _$PotonganDetailEntityCopyWithImpl(this._self, this._then);

  final PotonganDetailEntity _self;
  final $Res Function(PotonganDetailEntity) _then;

/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alfa = null,Object? keterlambatan = null,Object? bpjs = null,Object? pph21 = null,}) {
  return _then(_self.copyWith(
alfa: null == alfa ? _self.alfa : alfa // ignore: cast_nullable_to_non_nullable
as PotonganSummaryEntity,keterlambatan: null == keterlambatan ? _self.keterlambatan : keterlambatan // ignore: cast_nullable_to_non_nullable
as PotonganSummaryEntity,bpjs: null == bpjs ? _self.bpjs : bpjs // ignore: cast_nullable_to_non_nullable
as int,pph21: null == pph21 ? _self.pph21 : pph21 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganSummaryEntityCopyWith<$Res> get alfa {
  
  return $PotonganSummaryEntityCopyWith<$Res>(_self.alfa, (value) {
    return _then(_self.copyWith(alfa: value));
  });
}/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganSummaryEntityCopyWith<$Res> get keterlambatan {
  
  return $PotonganSummaryEntityCopyWith<$Res>(_self.keterlambatan, (value) {
    return _then(_self.copyWith(keterlambatan: value));
  });
}
}


/// Adds pattern-matching-related methods to [PotonganDetailEntity].
extension PotonganDetailEntityPatterns on PotonganDetailEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PotonganDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PotonganDetailEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PotonganDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _PotonganDetailEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PotonganDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PotonganDetailEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PotonganSummaryEntity alfa,  PotonganSummaryEntity keterlambatan,  int bpjs,  int pph21)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PotonganDetailEntity() when $default != null:
return $default(_that.alfa,_that.keterlambatan,_that.bpjs,_that.pph21);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PotonganSummaryEntity alfa,  PotonganSummaryEntity keterlambatan,  int bpjs,  int pph21)  $default,) {final _that = this;
switch (_that) {
case _PotonganDetailEntity():
return $default(_that.alfa,_that.keterlambatan,_that.bpjs,_that.pph21);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PotonganSummaryEntity alfa,  PotonganSummaryEntity keterlambatan,  int bpjs,  int pph21)?  $default,) {final _that = this;
switch (_that) {
case _PotonganDetailEntity() when $default != null:
return $default(_that.alfa,_that.keterlambatan,_that.bpjs,_that.pph21);case _:
  return null;

}
}

}

/// @nodoc


class _PotonganDetailEntity implements PotonganDetailEntity {
  const _PotonganDetailEntity({required this.alfa, required this.keterlambatan, required this.bpjs, required this.pph21});
  

@override final  PotonganSummaryEntity alfa;
@override final  PotonganSummaryEntity keterlambatan;
@override final  int bpjs;
@override final  int pph21;

/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PotonganDetailEntityCopyWith<_PotonganDetailEntity> get copyWith => __$PotonganDetailEntityCopyWithImpl<_PotonganDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PotonganDetailEntity&&(identical(other.alfa, alfa) || other.alfa == alfa)&&(identical(other.keterlambatan, keterlambatan) || other.keterlambatan == keterlambatan)&&(identical(other.bpjs, bpjs) || other.bpjs == bpjs)&&(identical(other.pph21, pph21) || other.pph21 == pph21));
}


@override
int get hashCode => Object.hash(runtimeType,alfa,keterlambatan,bpjs,pph21);

@override
String toString() {
  return 'PotonganDetailEntity(alfa: $alfa, keterlambatan: $keterlambatan, bpjs: $bpjs, pph21: $pph21)';
}


}

/// @nodoc
abstract mixin class _$PotonganDetailEntityCopyWith<$Res> implements $PotonganDetailEntityCopyWith<$Res> {
  factory _$PotonganDetailEntityCopyWith(_PotonganDetailEntity value, $Res Function(_PotonganDetailEntity) _then) = __$PotonganDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 PotonganSummaryEntity alfa, PotonganSummaryEntity keterlambatan, int bpjs, int pph21
});


@override $PotonganSummaryEntityCopyWith<$Res> get alfa;@override $PotonganSummaryEntityCopyWith<$Res> get keterlambatan;

}
/// @nodoc
class __$PotonganDetailEntityCopyWithImpl<$Res>
    implements _$PotonganDetailEntityCopyWith<$Res> {
  __$PotonganDetailEntityCopyWithImpl(this._self, this._then);

  final _PotonganDetailEntity _self;
  final $Res Function(_PotonganDetailEntity) _then;

/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alfa = null,Object? keterlambatan = null,Object? bpjs = null,Object? pph21 = null,}) {
  return _then(_PotonganDetailEntity(
alfa: null == alfa ? _self.alfa : alfa // ignore: cast_nullable_to_non_nullable
as PotonganSummaryEntity,keterlambatan: null == keterlambatan ? _self.keterlambatan : keterlambatan // ignore: cast_nullable_to_non_nullable
as PotonganSummaryEntity,bpjs: null == bpjs ? _self.bpjs : bpjs // ignore: cast_nullable_to_non_nullable
as int,pph21: null == pph21 ? _self.pph21 : pph21 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganSummaryEntityCopyWith<$Res> get alfa {
  
  return $PotonganSummaryEntityCopyWith<$Res>(_self.alfa, (value) {
    return _then(_self.copyWith(alfa: value));
  });
}/// Create a copy of PotonganDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PotonganSummaryEntityCopyWith<$Res> get keterlambatan {
  
  return $PotonganSummaryEntityCopyWith<$Res>(_self.keterlambatan, (value) {
    return _then(_self.copyWith(keterlambatan: value));
  });
}
}

/// @nodoc
mixin _$PotonganSummaryEntity {

 int get totalPotongan; int get potonganPerHari;
/// Create a copy of PotonganSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PotonganSummaryEntityCopyWith<PotonganSummaryEntity> get copyWith => _$PotonganSummaryEntityCopyWithImpl<PotonganSummaryEntity>(this as PotonganSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PotonganSummaryEntity&&(identical(other.totalPotongan, totalPotongan) || other.totalPotongan == totalPotongan)&&(identical(other.potonganPerHari, potonganPerHari) || other.potonganPerHari == potonganPerHari));
}


@override
int get hashCode => Object.hash(runtimeType,totalPotongan,potonganPerHari);

@override
String toString() {
  return 'PotonganSummaryEntity(totalPotongan: $totalPotongan, potonganPerHari: $potonganPerHari)';
}


}

/// @nodoc
abstract mixin class $PotonganSummaryEntityCopyWith<$Res>  {
  factory $PotonganSummaryEntityCopyWith(PotonganSummaryEntity value, $Res Function(PotonganSummaryEntity) _then) = _$PotonganSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int totalPotongan, int potonganPerHari
});




}
/// @nodoc
class _$PotonganSummaryEntityCopyWithImpl<$Res>
    implements $PotonganSummaryEntityCopyWith<$Res> {
  _$PotonganSummaryEntityCopyWithImpl(this._self, this._then);

  final PotonganSummaryEntity _self;
  final $Res Function(PotonganSummaryEntity) _then;

/// Create a copy of PotonganSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPotongan = null,Object? potonganPerHari = null,}) {
  return _then(_self.copyWith(
totalPotongan: null == totalPotongan ? _self.totalPotongan : totalPotongan // ignore: cast_nullable_to_non_nullable
as int,potonganPerHari: null == potonganPerHari ? _self.potonganPerHari : potonganPerHari // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PotonganSummaryEntity].
extension PotonganSummaryEntityPatterns on PotonganSummaryEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PotonganSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PotonganSummaryEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PotonganSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _PotonganSummaryEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PotonganSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PotonganSummaryEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalPotongan,  int potonganPerHari)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PotonganSummaryEntity() when $default != null:
return $default(_that.totalPotongan,_that.potonganPerHari);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalPotongan,  int potonganPerHari)  $default,) {final _that = this;
switch (_that) {
case _PotonganSummaryEntity():
return $default(_that.totalPotongan,_that.potonganPerHari);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalPotongan,  int potonganPerHari)?  $default,) {final _that = this;
switch (_that) {
case _PotonganSummaryEntity() when $default != null:
return $default(_that.totalPotongan,_that.potonganPerHari);case _:
  return null;

}
}

}

/// @nodoc


class _PotonganSummaryEntity implements PotonganSummaryEntity {
  const _PotonganSummaryEntity({required this.totalPotongan, required this.potonganPerHari});
  

@override final  int totalPotongan;
@override final  int potonganPerHari;

/// Create a copy of PotonganSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PotonganSummaryEntityCopyWith<_PotonganSummaryEntity> get copyWith => __$PotonganSummaryEntityCopyWithImpl<_PotonganSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PotonganSummaryEntity&&(identical(other.totalPotongan, totalPotongan) || other.totalPotongan == totalPotongan)&&(identical(other.potonganPerHari, potonganPerHari) || other.potonganPerHari == potonganPerHari));
}


@override
int get hashCode => Object.hash(runtimeType,totalPotongan,potonganPerHari);

@override
String toString() {
  return 'PotonganSummaryEntity(totalPotongan: $totalPotongan, potonganPerHari: $potonganPerHari)';
}


}

/// @nodoc
abstract mixin class _$PotonganSummaryEntityCopyWith<$Res> implements $PotonganSummaryEntityCopyWith<$Res> {
  factory _$PotonganSummaryEntityCopyWith(_PotonganSummaryEntity value, $Res Function(_PotonganSummaryEntity) _then) = __$PotonganSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalPotongan, int potonganPerHari
});




}
/// @nodoc
class __$PotonganSummaryEntityCopyWithImpl<$Res>
    implements _$PotonganSummaryEntityCopyWith<$Res> {
  __$PotonganSummaryEntityCopyWithImpl(this._self, this._then);

  final _PotonganSummaryEntity _self;
  final $Res Function(_PotonganSummaryEntity) _then;

/// Create a copy of PotonganSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPotongan = null,Object? potonganPerHari = null,}) {
  return _then(_PotonganSummaryEntity(
totalPotongan: null == totalPotongan ? _self.totalPotongan : totalPotongan // ignore: cast_nullable_to_non_nullable
as int,potonganPerHari: null == potonganPerHari ? _self.potonganPerHari : potonganPerHari // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
