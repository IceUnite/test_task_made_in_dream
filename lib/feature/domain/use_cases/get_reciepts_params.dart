import 'package:equatable/equatable.dart';

class Params extends Equatable {
  final bool refresh;

  const Params({required this.refresh});

  @override
  List<Object> get props => [refresh];
}