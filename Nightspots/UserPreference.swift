

import UIKit


class UserPreference: NSObject {

    var distance: Int = 0
    var minAge: Int = 0
    var maxAge: Int = 0
    var budget: Budget = .Cheap
    
    enum Category {
    
     case Lounge , Bar, Club ,  SportsBar  , GayBar
        
    }
    
    enum Offering {
        
        case Coat, Karaoke, Food
    }
    
    
}
