import UIKit

class AnimalCareSubcategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var subcategories: [String] = [
        "Animal Aggressive Behavior",
        "Animal Bite",
        "Animal Community Cat Program",
        "Animal Confined",
        "Animal Lack of Care",
        "Animal Loose",
        "Animal Nuisance",
        "Animal Owner Surrender",
        "Animal Wildlife",
        "Dead Animal Pick Up",
        "City Property Management/Real Estate -3",
        "Code Concerns",
        "Consumer Protection Complaint",
        "Food Borne Illness",
        "Homeless Meal Event",
    ]
    
    // Connect this IBOutlet from the storyboard
    @IBOutlet weak var tableViewer: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up table view data source and delegate
        tableViewer.dataSource = self
        tableViewer.delegate = self
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subcategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubcategoryCellz", for: indexPath)
        cell.textLabel?.text = subcategories[indexPath.row]
        return cell
    }
    
    // MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "ShowRequestDetails", sender: indexPath)
    }
    
}
