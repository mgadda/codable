import Foundation

struct Foo : Codable {
  let bar: String = "test"
}

let foo = Foo()
NSKeyedArchiver.archiveRootObject(foo, toFile: "/tmp/foo.dat")
