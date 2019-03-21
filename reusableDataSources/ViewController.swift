import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var store: MessageListDataSource = MessageListDataSource()
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = store
    }
}
