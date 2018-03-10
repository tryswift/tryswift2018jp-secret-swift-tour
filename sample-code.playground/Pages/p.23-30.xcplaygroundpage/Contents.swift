let _: (Int) -> Int = { $0 + 1 }

// ---

func f(x: Int...) -> String { return "" }
let _: (Int...) -> String = f

// ---

struct SomeType {
  func f(x: Int) -> String { return "" }
}

let _: (Int) -> String = SomeType().f
let _: (SomeType) -> (Int) -> String = SomeType.f

// ---

enum Rank: Int {
  case ace = 1
  case two, three, four, five, six,
  seven, eight, nine, ten
  case jack, queen, king
}

let _: (Int) -> Rank? = Rank.init

// ---

let _: (Int, Int) -> (Int) = (+)
let _: (inout Int, Int) -> () = (+=)

// ---

enum Page {
  case settings
  case externalSite(URL)
}
let _: (URL) -> Page = Page.externalSite

// ---

import Foundation
do {
enum Page {
  case settings
  case externalSite(URL)
  static var settings: Page {
    return Page.settings
  }
  
  static func externalSite(_ url: URL) -> Page {
    return Page.externalSite(url)
  }
}
let _: (URL) -> Page = Page.externalSite
}

// ---

[1.1, 3.2 ,3.5].map(round)
[1.1, 3.2 ,3.5].sorted(by: <)
["www.ezura.me", "🐱"].flatMap(URL.init)
