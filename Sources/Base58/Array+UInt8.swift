import Foundation
import BigInt

public extension Array where Element == UInt8 {

    public func base58EncodedString() -> String? {
        var base58 = [UInt8]()

        var integer = BigUInt(Data(self))

        while integer > 0 {
            let (quotient, remainder) = integer.quotientAndRemainder(dividingBy: radix)
            base58.insert(alphabet[Int(remainder)], at: 0)
            integer = quotient
        }

        let prefix = Array(self.prefix { $0 == 0 }).map { _ in alphabet[0] }
        base58.insert(contentsOf: prefix, at: 0)

        return String(bytes: base58, encoding: .utf8)
    }
}
