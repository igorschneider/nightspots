

import Foundation

class LocationModel: NSObject {
    
    var address: String?
    var latitude: String?
    var longitude: String?
    var name: String = "teste"
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(name: String, address: String, latitude: String, longitude: String) {
        
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "Address: \(address), Latitude: \(latitude), Longitude: \(longitude)"
        
    }
    
    
}