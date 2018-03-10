// ❗️runtime error
let _: Int = { preconditionFailure() }()
// ❗️runtime error
let _: Void = { fatalError() }()
let _: Never = { while(true) {} }()
