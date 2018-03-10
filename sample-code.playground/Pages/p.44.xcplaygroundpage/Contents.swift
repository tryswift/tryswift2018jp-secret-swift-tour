postfix func ++(x: inout Int) -> Int {
  defer { x += 1 }
  return x
}
