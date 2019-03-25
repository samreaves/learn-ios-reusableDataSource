import Foundation

class MessagesStore {
    var messages: [Message] = [
        Message(title: "Hello", preview: "Just saying hello"),
        Message(title: "Sup", preview: "Just saying sup"),
        Message(title: "Suh", preview: "Suh du")
    ]
    
    public struct Message {
        let title: String
        let preview: String
    }
}

