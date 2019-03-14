import BigInt

public extension String {

    private static let alphabet = [UInt8]("123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz".utf8);
    private static let radix = BigUInt(alphabet.count)

    public func decode() -> [UInt8] {

        let bytes = [UInt8](self.utf8)

        var answer = BigUInt(0)
        var i = BigUInt(1)

        for char in bytes.reversed() {
            guard let index = String.alphabet.firstIndex(of: char) else {
                return []
            }

            answer += (i * BigUInt(index))
            i *= String.radix
        }

        return Array(bytes.prefix { i in i == String.alphabet[0] } + answer.serialize())
    }

}