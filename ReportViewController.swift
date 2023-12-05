//
//  ReportViewController.swift
//  OurDallas
//
//  Created by Rafe Forward on 11/27/23.
//

import UIKit
class ReportViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
        private var reports: [Report] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 100
            tableView.register(ReportCell.self, forCellReuseIdentifier: "ReportCell")
            
            fetchReports()
            
        }
        
    private func fetchReports() {
        if let data = UserDefaults.standard.value(forKey: "Reports") as? [Data] {
            let decodedReports = data.compactMap { try? PropertyListDecoder().decode(Report.self, from: $0) }
            reports = decodedReports
            print(reports)
            tableView.reloadData()
            
            for (index, report) in reports.enumerated() {
                print("Report \(index + 1):")
                print("First Name: \(report.firstName)")
                print("Last Name: \(report.lastName)")
                print("Email: \(report.email)")
                print("Phone Number: \(report.phoneNumber)")
                print("Comments: \(report.comments)")
                print("Category: \(report.category)")
                print("---")
            }
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReportCell", for: indexPath) as? ReportCell else {
            fatalError("Unable to dequeue ReportCell.")
        }
        
        let report = reports[indexPath.row]
        cell.configure(with: report)
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
class ReportCell: UITableViewCell {
    
    let nameLabel = UILabel()
    let commentLabel = UILabel()
    let dateLabel = UILabel()
    let categoryLabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(categoryLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(commentLabel)
        contentView.addSubview(dateLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        commentLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        commentLabel.numberOfLines = 0
        categoryLabel.numberOfLines = 0
        
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.deactivate(contentView.constraints)
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
             categoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
             categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
             
             // Place nameLabel below categoryLabel
             nameLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8),
             nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
             nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
             
             commentLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
             commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
             commentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
             
             dateLabel.topAnchor.constraint(equalTo: commentLabel.bottomAnchor, constant: 8),
             dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
             dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
             dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16) // Only this label should have a bottom constraint
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with report: Report) {
        nameLabel.text = "\(report.firstName) \(report.lastName)"
        commentLabel.text = report.comments
        categoryLabel.text = report.category
        // Convert Date to String
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateLabel.text = dateFormatter.string(from: report.date)
        contentView.backgroundColor = UIColor(red: 87.5, green: 85.9, blue: 81.6, alpha: 1.0)
    }
}
