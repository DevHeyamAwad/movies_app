extension NonNullBoolean on bool? {
  bool onNull() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}
