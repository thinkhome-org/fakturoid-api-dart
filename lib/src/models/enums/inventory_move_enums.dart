import 'package:freezed_annotation/freezed_annotation.dart';

enum InventoryMoveDirection {
  @JsonValue('in')
  moveIn,
  @JsonValue('out')
  moveOut,
}
