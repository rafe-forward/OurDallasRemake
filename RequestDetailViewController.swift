//
//  RequestDetailViewController.swift
//  OurDallas
//
//  Created by Rafe Forward on 11/26/23.
//

import UIKit
import CoreLocation
struct Request {
    var id: String
    var title: String
    // Add additional properties here as needed for the request details
}
struct Report: Codable {
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    var comments: String
    var category: String
    var date: Date
}
var subcategories: [String] = []
class RequestDetailViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var addressOut: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var commentField: UITextView!
    var locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    @IBAction func currentLocationTapped(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
    }
    let tapGesture = UITapGestureRecognizer(target: RequestDetailViewController.self, action: #selector(dismissKeyboard))
    @IBAction func loadInformationTapped(_ sender: UIButton) {
        if let data = UserDefaults.standard.value(forKey: "personalInfo") as? Data {
            let info = try? PropertyListDecoder().decode(PersonalInfo.self, from: data)
            firstNameTextField.text = info?.firstName
            lastNameTextField.text = info?.lastName
            emailTextField.text = info?.email
            phoneNumberTextField.text = info?.phoneNumber
            
        }
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBOutlet weak var subCateg: UILabel!
    @IBAction func submitButtonTapped(_ sender: UIButton) {

        // Create a report object
        let report = Report(
            firstName: firstNameTextField.text ?? "",
            lastName: lastNameTextField.text ?? "",
            email: emailTextField.text ?? "",
            phoneNumber: phoneNumberTextField.text ?? "",
            comments: commentField.text ?? "",
            category: subcategory ?? "",
            date: Date()
        )


        if var savedReports = UserDefaults.standard.array(forKey: "Reports") as? [Data] {
            if let encodedReport = try? PropertyListEncoder().encode(report) {
                savedReports.append(encodedReport)
                UserDefaults.standard.set(savedReports, forKey: "Reports")
                print("Report saved successfully")
            } else {
                print("Failed to encode report")
            }
        } else {
            if let encodedReport = try? PropertyListEncoder().encode(report) {
                UserDefaults.standard.set([encodedReport], forKey: "Reports")
                print("Report saved successfully")
            } else {
                print("Failed to encode report")
            }
        }

    }

    var subcategory: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        if let subcategory = subcategory {
            print("Received subcategory: \(subcategory)")
            subCateg.text = subcategory
        } else {
            print("No subcategory received")
        }
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            geocoder.reverseGeocodeLocation(location) { [weak self] (placemarks, error) in
                if let error = error {
                    print("Error: \(error.localizedDescription)")
                    return
                }

                if let address = placemarks?.first {
                    let formattedAddress = [address.name, address.thoroughfare, address.subLocality, address.locality, address.administrativeArea, address.postalCode, address.country].compactMap { $0 }.joined(separator: ", ")
                    print("Address: \(formattedAddress)")
                    self?.updateLocationField(with: formattedAddress)
                }
                
                manager.stopUpdatingLocation()
            }
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location Error: \(error.localizedDescription)")
    }
    func updateLocationField(with address: String) {
        self.addressOut.text = address
    }
}
