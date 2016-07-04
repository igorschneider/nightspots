

import UIKit

class Event: NSObject {
    
    var name: String = ""
    var eventDescription: String = ""
    var startDate: NSDate?
    var endDate: NSDate?
    var listTable: Set<Table> = []
    var listService: Set<Service> = []
    var listAdmission: Set<Admission> = []
    var venue: Venue?
    var musicGenre: MusicGenre?
    var status: Status = .Active
    
    enum Status{
    
    case Active, Soldout, Passed
        
    }

}
