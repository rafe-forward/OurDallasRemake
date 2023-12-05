//
//  Requests.swift
//  OurDallas
//
//  Created by Rafe Forward on 11/24/23.
//

import Foundation

let requestsList = [
    "Animal Care and Contol",
    "City Code Violations & Court Services",
    "Creeks, Streams, Storm Drains, and Waterways",
    "Enviornmental & Water",
    "Housing & Community Concerns",
    "Miscellanious Concerns",
    "Non Emergenecy Police & Fire Services",
    "Parking and Transport Regulation",
    "Sanitation Services",
    "Alleys and Sidewalks",
    "Roads",
    "Traffic Signs and Signals",
    "Other"
    

]
/*
Animal Care and Control
    Animal Aggressive Behavior
    Animal Bite
    Animal Community Cat Program
    Animal Confined
    Animal Lack of Care
    Animal Loose
    Animal Nuisance
    Animal Owner Surrender
    Animal Wildlife
    Dead Animal Pick Up
City Code Violations & Court Services
    City Property Management/ Real Estate -3
    Code Concerns
    Consumer Protection Complaint
    Food Borne Illness
    Homeless Meal Event
    Landlord Retaliation After Reported Code Violation
    Mobile Food Complaint
    Mosquito - Do Not Spray
    Mosquito Beekeeper Notification
    Restaurant/Food Complaint
    Single Family Rental Needs Registration
    Smoking Violation
    Homeless Encampment (moved from homeless encampment)
    Illegal Dumping Sign
    Motor Vehicle Idling
    Historic District Violation
    Building Permits Violation
City Parks (deleted)
Court and Detention Services (deleted)
Creeks, Streams, Storm Drains, and Waterways
    Creek Bank Erosion
    Creek/Culvert Blockage
    Creek/Culvert Maintenance
    Flooded Roadway Warning System
    High Water Flooded Roadway Alarm Warning System -3
    Illegal Dumping Urgent -3
    Inlet/Storm Drain Cleaning
    Lid Cover Broken (Storm Sewer/Manhole) - 3
    Lid Cover Broken/Missing (Storm Sewer Manhole) - H. -3
    Sewage Discharge Urgent -3
    Storm Sewer Line Locate
    Storm Water Construction Site Urgent -3
    Storm Water Industrial Site Urgent -3
Environmental & Water
    Air Pollution Complaint
    Illegal Dumping Urgent -3
    Sewage Discharge Urgent -3
    Street Spillage/Debris in Right of Way -2
    Swimming Pool Discharge Urgent -3
    Floodplain/Stormwater Project Inquiry
    Illegal Removal of Protected Tree
    Lid Cover Broken (Storm Sewer/Manhole) -3
    Lid Cover Broken/Missing (Storm Sewer Manhole) - H.. -3
    Objects Dropped in Inlet/Storm Drain - Hazardous
    Sewer Problems
    Swimming Pool Discharge Urgent -3
    Water Payments & Billing Inquiry
    Water Questions
    Water Utilities Payment Plan Request
    Water/Wastewater Line Locate
    Water Pollution Urgent
    Water/Sanitary Sewer Construction Project
Fair Housing Concerns (deleted)
Homeless Solutions (deleted)
Housing and Community Concerns
    Housing & Neighborhood Revitalization
    Social Services Request -4
    Fair Housing Complaint
    Social Services Request -4
Miscellaneous Concerns
    City Hall on the Go
    City Property Management/ Real Estate -3
    Library Concerns
    Miscellaneous Concerns
    Scooter/Bike Shared Dockless Vehicle -2
    Special Events Permit Request
    Dallas Bond Program Projects
Non-Emergency Police and Fire Services
    Noise Complaint (Residential)
    Increased Criminal Activities
    Fire Department Educational Request
    Increased Police Patrol
    Fire Inspection
    Fireworks -2
    Illegal Spray Painting
    Lock or Unlock Knox Lock/Box
    Locked/Blocked Exit
    Narcotics/Vice Complaint
    Occupancy Load Violation (Commercial/Business)
    Panhandling
    Smoke Detector Request
    Social Services Request -4
    Chronic Traffic Violations
Parking and Transport Regulation
    Handicap Parking Violation -2
    Parking Report a Violation -2
    Valet Parking Complaint
    Street or Road Blockage
    Fair Park Parking Violation
    Resident Only - Parking Permit Request
    Pay Lot Booking
    Transportation Complaint
    Parking in Fire Lane/Fire Hydrants
    Parking Report a Violation-2
Sanitation Services
    Sanitation Commercial Services
    Sanitation District Billing Dispute - SAN
    Sanitation Helping Hands
    Sanitation Missed Brush/Bulk
    Sanitation Missed Garbage
    Sanitation Missed Recycle
    Sanitation Pack-Out
    Sanitation Property Damage
    Sanitation Roll Cart Maintenance/Delivery
    Sanitation Annual 20 Cubic Yard Exemption
    Sanitation Litter Cans
Alleys and Sidewalks
    Alley Repair - Routine
    Alley Rumble Strip (Speed Hump) - New -2
    Alley/Sidewalk/Street Repair - Hazardous
    Barricades - Pickup/Reset/Replace
    City Property Management/ Real Estate -3
    Construction Right of Way/Status Inquiry -2
    Drainage Ditch Cleaning and Repair
    Flooding Emergency -2
    High Water Flooded Roadway Alarm Warning System -3
    Interagency Projects
    Lid Cover Broken (Storm Sewer/Manhole) -3
    Lid Cover Broken/Missing (Storm Sewer Manhole) - H.. -3
    Median/Right of Way Maintenance
    MOWmentum Program
    New Alley/Sidewalk/Street Request
    Objects Dropped in Inlet/Storm Drain - Hazardous -2
    Railroad Crossing Repair
    Sand Removal Request
    Scooter/Bike Shared Dockless Vehicle
    Shopping Cart Pickup
    Shopping Carts Hazardous
    Sidewalk Replacement Program
    Sidewalk Utility Obstruction
    Snow/Ice Sanding - Hazardous
    Survey Questions - Public Right of Way
    Traffic - Speed Control
    Tree down/Low Limbs - Hazardous
    Utility Street Cuts - Hazardous
    Utility Cut - Routine
    Visibility Obstruction - Hazardous
    Visibility Obstruction
    Wheel Chair Ramp/Curb Street Cuts
    Street or Road Blockage (moved)
    Alley Rumble Strip (Speed Hump) - New
Roads(created)
    Construction Right of Way/Status Inquiry
    Bike Lane Marking Maintenance (moved)
    Speed Limit Change Request
    Steel Plates in Street (Covering Utility Street Cuts/Exc. -2
    Street Lamp/Light Maintenance -3
    Street Lamp/Light - New/Relocation -3
    Street Repair
    Street Spillage/Debris in Right of Way -2
    Street Sweeping - Thoroughfares
    Street or Road Blockage
    Paving Reconstruction Project
    Street Resurface Program
    Pot Hole - Hazardous
    Pot Hole - Routine Repair
    Guardrail New
    Guardrail Maintenance
    Guardrail Repair Hazardous
Traffic Signs and Signals
    Graffiti Traffic Sign
    Graffiti Traffic Signal
    Traffic Construction Signs
    Traffic Markings - Large Cast Iron Button Removal - TRN
    Traffic Markings - Maintenance
    Traffic Markings - New
    Traffic Sign - New
    Traffic Sign - Visibility Obstruction TRN
    Traffic Sign Knockdown
    Traffic Sign Maintenance (Other)
    Traffic Signal - All Out - TRN
    Traffic Signal - Bulb Out/NonConflict Hd Trn/VO - TRN
    Traffic Signal - Flashing - TRN
    Traffic Signal - Knockdown - TRN
    Traffic Signal - New
    Traffic Signal - Timing - TRN
    Traffic Signal Head Turn (Conflicting) - TRN
    Traffic Signal School Flasher Maintenance - TRN
    Traffic Signal Stuck - TRN
    Traffic Signal - Visibility Obstruction - TRN
Water Concerns (deleted)
Other
    Automation-Recom Alert
    Boarding Home Facilities
    Chemical Spill Urgent
    City Building Maintenance
    Complaint/Compliment
    Commercial Pool Complaint - CCS
    Conservation District Violation
    Construction Site Complaint
    Private Development Coordination
    School Crossing Guard
    Towing Complaint
    Traffic Signal
    Park Maintenece/Misc
    ADA Accessibility Concerns
*/
