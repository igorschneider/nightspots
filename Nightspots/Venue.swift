
import Foundation

class Venue: NSObject {

    var name: String = ""
    var venueDescription: String = ""
    var valetPrice: Double = 0.0
    var budget: Budget = .Cheap
    var minAge: Int = 0
    var maxAge: Int = 0
    var distance: Double = 0.0
    var venueImages: Set<String>=[]
    var eventlist: Set<Event> = []
    var location:LocationModel?
    
    
   
}
