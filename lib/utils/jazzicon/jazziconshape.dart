// export interface IJazziconProps {
// size?: number;
// address?: string;
// seed?: number;
// containerStyle?: StyleProp<ViewStyle>;
// }
//
// export interface IJazziconState {
// generator: MersenneTwister.IMersenneTwister;
// colors: string[];
// }

import 'package:flutter/cupertino.dart';

class JazziconShape {
  double center;
  double tx;
  double ty;
  double rotate;
  Color fill;

  JazziconShape(
      {required this.center,
      required this.tx,
      required this.ty,
      required this.rotate,
      required this.fill});

  @override
  String toString() {
    return "JazziconShape tx=$tx ty=$ty rotate=$rotate center=$center fill=$fill";
  }

  Map<String, dynamic> toMap() {
    return {
      'center': this.center,
      'tx': this.tx,
      'ty': this.ty,
      'rotate': this.rotate,
      'fill': this.fill.value,
    };
  }

  factory JazziconShape.fromMap(Map<String, dynamic> map) {
    return JazziconShape(
      center: map['center'] as double,
      tx: map['tx'] as double,
      ty: map['ty'] as double,
      rotate: map['rotate'] as double,
      fill: map['fill'] as Color,
    );
  }
}

class JazziconData {
  double size;
  Color background;
  List<JazziconShape> shapelist;

  JazziconData(
      {required this.size, required this.background, required this.shapelist});
}
