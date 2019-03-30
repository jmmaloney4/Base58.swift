import Foundation
import BigInt

public extension Array where Element == UInt8 {

    func base58EncodedString() -> String? {
        var bytes = [UInt8]()

        var integer = BigUInt(Data(self))

        while integer > 0 {
            let (quotient, remainder) = integer.quotientAndRemainder(dividingBy: radix)
            bytes.insert(alphabet[Int(remainder)], at: 0)
            integer = quotient
        }

        bytes.insert(contentsOf: Array(prefix { $0 == 0 }).map { _ in alphabet[0] }, at: 0)
        return String(bytes: bytes, encoding: .utf8)
    }
}
