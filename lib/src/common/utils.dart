
class SingleValue<T> {
  SingleValue(this.value);

  T value;
}

extension FirstWhereOrNullExt<E> on Iterable<E> {
  E? firstWhereOrNull(bool test(E element), {E orElse()?}) {
    for (E element in this) {
      if (test(element)) return element;
    }
    if (orElse != null) return orElse();
    return null;
  }
}

DateTime getTodayWithoutTime() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}

extension StringToNullableExt on String {
  String? toNullable() {
    return isEmpty ? null : this;
  }
}