import Foundation

struct Foo : Codable {
    let bar: String = "test"
}

let foo = Foo()

// encode and archive
let key = "foo-key"
let archiver = NSKeyedArchiver()
try archiver.encodeEncodable(foo, forKey: key)

let path = URL(fileURLWithPath: "/tmp/foo.dat")
try archiver.encodedData.write(to: path)

// read and decode
let archivedData = try Data(contentsOf: path)
let unarchiver = NSKeyedUnarchiver(forReadingWith: archivedData)
let decodedFoo = unarchiver.decodeDecodable(Foo.self, forKey: key)
