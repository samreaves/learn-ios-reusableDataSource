import UIKit

class MessageListDataSource: NSObject, UITableViewDataSource {
    var messages: [Message] = [
        Message(title: "Hello", preview: "Just saying hello"),
        Message(title: "Sup", preview: "Just saying sup"),
        Message(title: "Suh", preview: "Suh du")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = self.messages[indexPath.row]
        let reuseIdentifier = "message"
        let cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        cell?.textLabel?.text = message.title
        cell?.detailTextLabel?.text = message.preview
        
        return cell!
    }
}

struct Message {
    let title: String
    let preview: String
}
