func f() {
  let v: String
  defer { print(v) }
  v = "init value"
}
