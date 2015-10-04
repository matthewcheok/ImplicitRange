public struct ImplicitRange<Element: ForwardIndexType> {
    var startIndex: Element?
    var endIndex: Element?
}

extension Array {
    public subscript (bounds: ImplicitRange<Int>) -> ArraySlice<Element> {
        get {
            var startIndex = bounds.startIndex ?? 0
            var endIndex = bounds.endIndex ?? count-1
            
            if startIndex < 0 {
                startIndex += count
            }
            
            if endIndex < 0 {
                endIndex += count
            }
            
            if startIndex <= endIndex {
                return self[startIndex...endIndex]
            }
            else {
                let result = self[endIndex...startIndex].reverse().map { $0 }
                return ArraySlice(result)
            }
        }
    }
}

infix operator .... { associativity left precedence 135 }
public func ....<Pos : ForwardIndexType>(minimum: Pos, maximum: Pos) -> ImplicitRange<Pos> {
    return ImplicitRange(startIndex: minimum, endIndex: maximum)
}

prefix operator .... { }
public prefix func ....<Pos : ForwardIndexType>(maximum: Pos) -> ImplicitRange<Pos> {
    return ImplicitRange(startIndex: nil, endIndex: maximum)
}

postfix operator .... { }
public postfix func ....<Pos : ForwardIndexType>(minimum: Pos) -> ImplicitRange<Pos> {
    return ImplicitRange(startIndex: minimum, endIndex: nil)
}
