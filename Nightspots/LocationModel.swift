

import Foundation

class LocationModel: NSObject {
    
    var address: String?
    var latitude: String?
    var longitude: String?

    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @address, @latitude, and @longitude parameters
    
    init( address: String, latitude: String, longitude: String) {
        
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "Address: \(address), Latitude: \(latitude), Longitude: \(longitude)"
        
    }
    
    
}