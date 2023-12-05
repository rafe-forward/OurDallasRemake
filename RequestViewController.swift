import UIKit

struct RequestCategory {
    let name: String
    let subcategories: [String]
    let iconName: String
}


class RequestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var requestTableView: UITableView!

    var categories: [RequestCategory] = [
        RequestCategory(name: "Animal Care and Control", subcategories: [
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
        ], iconName: "animalCareIcon"),
        RequestCategory(name: "City Code Violations & Court Services", subcategories: [
            "City Property Management/ Real Estate",
            "Code Concerns",
            "Consumer Protection Complaint",
            "Food Borne Illness",
            "Homeless Meal Event",
            "Landlord Retaliation After Reported Code Violation",
            "Mobile Food Complaint",
            "Mosquito - Do Not Spray",
            "Mosquito Beekeeper Notification",
            "Restaurant/Food Complaint",
            "Single Family Rental Needs Registration",
            "Smoking Violation",
            "Homeless Encampment (moved from homeless encampment)",
            "Illegal Dumping Sign",
            "Motor Vehicle Idling",
            "Historic District Violation",
            "Building Permits Violation",
        ], iconName: "cityCodeIcon"),
        RequestCategory(name: "Creeks, Streams, Storm Drains, and Waterways", subcategories: [
            "Creek Bank Erosion",
            "Creek/Culvert Blockage",
            "Creek/Culvert Maintenance",
            "Flooded Roadway Warning System",
            "Inlet/Storm Drain Cleaning",
            "Storm Sewer Line Locate",
            "Storm Water Construction Site Urgent",
            "Storm Water Industrial Site Urgent",
        ], iconName: "creeksStormIcon"),
        RequestCategory(name: "Environmental & Water", subcategories: [
            "Air Pollution Complaint",
            "Illegal Dumping Urgent",
            "Street Spillage/Debris in Right of Way",
            "Floodplain/Stormwater Project Inquiry",
            "Sewage Discharge Urgent",
            "Illegal Removal of Protected Tree",
            "Objects Dropped in Inlet/Storm Drain - Hazardous",
            "Sewer Problems",
            "Swimming Pool Discharge Urgent",
            "Water Payments & Billing Inquiry",
            "Water Questions",
            "Water Utilities Payment Plan Request",
            "Water/Wastewater Line Locate",
            "Water Pollution Urgent",
            "Water/Sanitary Sewer Construction Project",
        ], iconName: "enviornmentalWaterIcon"),
        RequestCategory(name: "Housing and Community Concerns", subcategories: [
            "Housing & Neighborhood Revitalization",
            "Social Services Request",
            "Fair Housing Complaint",
            "Social Services Request",
        ], iconName: "housingCommunityIcon"),
        RequestCategory(name: "Miscellaneous Concerns", subcategories: [
            "City Hall on the Go",
            "City Property Management/ Real Estate",
            "Library Concerns",
            "Miscellaneous Concerns",
            "Scooter/Bike Shared Dockless Vehicle",
            "Special Events Permit Request",
            "Dallas Bond Program Projects",
        ], iconName: "miscellaneousIcon"),
        RequestCategory(name: "Non-Emergency Police and Fire Services", subcategories: [
            "Noise Complaint (Residential)",
            "Increased Criminal Activities",
            "Fire Department Educational Request",
            "Increased Police Patrol",
            "Fire Inspection",
            "Fireworks -2",
            "Illegal Spray Painting",
            "Lock or Unlock Knox Lock/Box",
            "Locked/Blocked Exit",
            "Narcotics/Vice Complaint",
            "Occupancy Load Violation (Commercial/Business)",
            "Panhandling",
            "Smoke Detector Request",
            "Social Services Request",
            "Chronic Traffic Violations",
        ], iconName: "non-EmergencyIcon"),
        RequestCategory(name: "Parking and Transport Regulation", subcategories: [
            "Handicap Parking Violation ",
            "Parking Report a Violation",
            "Valet Parking Complaint",
            "Street or Road Blockage",
            "Fair Park Parking Violation",
            "Resident Only - Parking Permit Request",
            "Pay Lot Booking",
            "Transportation Complaint",
            "Parking in Fire Lane/Fire Hydrants",
            "Parking Report a Violation-2",
        ], iconName: "parkingTransportIcon"),
        RequestCategory(name: "Sanitation Services", subcategories: [
            "Sanitation Commercial Services",
            "Sanitation District Billing Dispute - SAN",
            "Sanitation Helping Hands",
            "Sanitation Missed Brush/Bulk",
            "Sanitation Missed Garbage",
            "Sanitation Missed Recycle",
            "Sanitation Pack-Out",
            "Sanitation Property Damage",
            "Sanitation Roll Cart Maintenance/Delivery",
            "Sanitation Annual 20 Cubic Yard Exemption",
            "Sanitation Litter Cans",
        ], iconName: "sanitationIcon"),
        RequestCategory(name: "Alleys and Sidewalks", subcategories: [
            "Alley Repair - Routine",
            "Alley Rumble Strip (Speed Hump) - New",
            "Alley/Sidewalk/Street Repair - Hazardous",
            "Barricades - Pickup/Reset/Replace",
            "City Property Management/ Real Estate",
            "Construction Right of Way/Status Inquiry",
            "Drainage Ditch Cleaning and Repair",
            "Flooding Emergency",
            "High Water Flooded Roadway Alarm Warning System",
            "Interagency Projects",
            "Lid Cover Broken (Storm Sewer/Manhole)",
            "Lid Cover Broken/Missing (Storm Sewer Manhole)",
            "Median/Right of Way Maintenance",
            "MOWmentum Program",
            "New Alley/Sidewalk/Street Request",
            "Objects Dropped in Inlet/Storm Drain - Hazardous",
            "Railroad Crossing Repair",
            "Sand Removal Request",
            "Scooter/Bike Shared Dockless Vehicle",
        ], iconName: "alleyIcon"),
        RequestCategory(name: "Roads", subcategories: [
            "Construction Right of Way/Status Inquiry",
            "Bike Lane Marking Maintenance (moved)",
            "Speed Limit Change Request",
            "Steel Plates in Street (Covering Utility Street Cuts/Exc",
            "Street Lamp/Light Maintenance",
            "Street Lamp/Light - New/Relocation",
            "Street Repair",
            "Street Spillage/Debris in Right of Way",
            "Street Sweeping - Thoroughfares",
            "Street or Road Blockage",
            "Paving Reconstruction Project",
            "Street Resurface Program",
            "Pot Hole - Hazardous",
            "Pot Hole - Routine Repair",
            "Guardrail New",
            "Guardrail Maintenance",
            "Guardrail Repair Hazardous",
        ], iconName: "roadsIcon"),
        RequestCategory(name: "Traffic Signs and Signals", subcategories: [
            "Graffiti Traffic Sign",
            "Graffiti Traffic Signal",
            "Traffic Construction Signs",
            "Traffic Markings - Large Cast Iron Button Removal - TRN",
            "Traffic Markings - Maintenance",
            "Traffic Markings - New",
            "Traffic Sign - New",
            "Traffic Sign - Visibility Obstruction TRN",
            "Traffic Sign Knockdown",
            "Traffic Sign Maintenance (Other)",
            "Traffic Signal - All Out - TRN",
            "Traffic Signal - Bulb Out/NonConflict Hd Trn/VO - TRN",
            "Traffic Signal - Flashing - TRN",
            "Traffic Signal - Knockdown - TRN",
            "Traffic Signal - New",
            "Traffic Signal - Timing - TRN",
            "Traffic Signal Head Turn (Conflicting) - TRN",
            "Traffic Signal School Flasher Maintenance - TRN",
            "Traffic Signal Stuck - TRN",
            "Traffic Signal - Visibility Obstruction - TRN",
        ], iconName: "trafficIcon"),
        RequestCategory(name: "Other", subcategories: [
            "Automation-Recom Alert",
            "Boarding Home Facilities",
            "Chemical Spill Urgent",
            "City Building Maintenance",
            "Complaint/Compliment",
            "Commercial Pool Complaint - CCS",
            "Conservation District Violation",
            "Construction Site Complaint",
            "Private Development Coordination",
            "School Crossing Guard",
            "Towing Complaint",
            "Traffic Signal",
            "Park Maintenance/Misc",
            "ADA Accessibility Concerns",
        ], iconName: "otherIcon"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Requests"
        
        // Set the data source and delegate of the table view to this view controller
        requestTableView.dataSource = self
        requestTableView.delegate = self
        
    }

    // MARK: - Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        let category = categories[indexPath.row]
        cell.textLabel?.text = categories[indexPath.row].name
        cell.imageView?.image = UIImage(named: category.iconName)
        cell.frame = cell.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        return cell
    }
    
    // MARK: - Table View Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        showSubcategoryController(for: category)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func showSubcategoryController(for category: RequestCategory) {
        // Instantiate the AnimalCareSubcategoriesViewController
        let subcategoryVC = CityCodeSubcategoriesViewController()
        
        // Pass the subcategories and title to the view controller
        subcategoryVC.subcategories = category.subcategories
        subcategoryVC.title = category.name
        
        if let navigationController = self.navigationController {
            // Push the view controller onto the navigation stack
            navigationController.pushViewController(subcategoryVC, animated: true)
        } else {
            present(subcategoryVC, animated: true, completion: nil)
        }
    }
}
