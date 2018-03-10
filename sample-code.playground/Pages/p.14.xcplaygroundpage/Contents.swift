let myVariable: Int /* = ?? */

do {
  let myVariable: Int = {
    while(true) {}
  }()
}

let naver: Never = unsafeBitCast((),                    to: Never.self)
let myVariable: Int = naver
