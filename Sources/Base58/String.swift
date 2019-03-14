import BigInt

public extension String {

    // @todo should this be done with the decode/encode generic function?
    // @todo better naming?
    public func base58EncodedStringToBytes() -> [UInt8] {
        var answer = BigUInt(0)
        var i = BigUInt(1)

        for char in utf8.reversed() {
            guard let index = alphabet.firstIndex(of: char) else {
                return []
            }

            answer += (i * BigUInt(index))
            i *= radix
        }

        return Array(utf8.prefix { i in i == alphabet[0] } + answer.serialize())
    }
}
