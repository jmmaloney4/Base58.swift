import BigInt

public extension String {

    // @todo should this be done with the decode/encode generic function?
    // @todo better naming?
    public func base58EncodedStringToBytes() -> [UInt8] {

        let bytes = [UInt8](self.utf8)

        var answer = BigUInt(0)
        var i = BigUInt(1)

        for char in bytes.reversed() {
            guard let index = alphabet.firstIndex(of: char) else {
                return []
            }

            answer += (i * BigUInt(index))
            i *= radix
        }

        return Array(bytes.prefix { i in i == alphabet[0] } + answer.serialize())
    }
}
