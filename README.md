# Codable

This package demonstrates how to serialize a swift struct to a file. There's
just one problem, it doesn't work.

Don't know what Codable or NSCoding are yet? Read about them here:

* [Encoding and Decoding Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types) in Swift 4
* [NSCoding](https://developer.apple.com/documentation/foundation/nscoding)

## Prerequisites 

You must be running Xcode 9, Swift 4, and macOS Sierra.

## Steps to reproduce

1. git clone https://github.com/mgadda/codable.git
2. cd codable
3. swift run

You'll probably see the following output:

```
> swift run
Compile Swift Module 'codable' (1 sources)
2017-09-22 10:01:03.043 codable[82920:2157761] -[_SwiftValue encodeWithCoder:]: unrecognized selector sent to instance 0x7f8b4fd0a2a0
2017-09-22 10:01:03.044 codable[82920:2157761] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[_SwiftValue encodeWithCoder:]: unrecognized selector sent to instance 0x7f8b4fd0a2a0'
*** First throw call stack:
(
  0   CoreFoundation                      0x00007fff82e562cb __exceptionPreprocess + 171
  1   libobjc.A.dylib                     0x00007fff97c6e48d objc_exception_throw + 48
  2   CoreFoundation                      0x00007fff82ed7f04 -[NSObject(NSObject) doesNotRecognizeSelector:] + 132
  3   CoreFoundation                      0x00007fff82dc8755 ___forwarding___ + 1061
  4   CoreFoundation                      0x00007fff82dc82a8 _CF_forwarding_prep_0 + 120
  5   Foundation                          0x00007fff848376ca _encodeObject + 1241
  6   Foundation                          0x00007fff8488351b +[NSKeyedArchiver archiveRootObject:toFile:] + 218
  7   codable                             0x000000010d117e45 main + 309
  8   libdyld.dylib                       0x00007fff98554235 start + 1
  9   ???                                 0x0000000000000001 0x0 + 1
)
libc++abi.dylib: terminating with uncaught exception of type NSException
fish: Job 1, 'swift run' terminated by signal SIGABRT (Abort)
```
