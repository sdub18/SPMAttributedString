import Foundation

// A data model representing any text that is visible in the AppBook. This text can be styled and is localizable.
public struct CoolText: Codable, Identifiable {
    
    public var id: UUID = UUID()
    
    /// The text this model represents. Attributes, codable conformance, and localization are handled by `Swift.Foundation.AttributedString` via Markdown.
    public var attributedText: AttributedString // TODO - include attribute scopes for our custom attributes like vocab, page linking
    
    public init(id: UUID = UUID(), attribtuedText: AttributedString) {
        self.id = id
        self.attributedText = attribtuedText
    }
    
    public init(id: UUID = UUID(), text: String) {
        self.id = id
        self.attributedText = AttributedString(stringLiteral: text)
    }
    
}
