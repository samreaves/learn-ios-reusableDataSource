import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let store = MessagesStore()
    var dataSource: TableViewDataSource<MessagesStore.Message>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataSource = TableViewDataSource(models: store.messages, reuseIdentifier: "message") { message, cell i
            cell.textLabel?.text = message.title
            cell.detailTextLabel?.text = message.preview
        }
 
        self.dataSource = dataSource
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}
