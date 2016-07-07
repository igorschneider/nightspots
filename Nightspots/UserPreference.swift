

import Foundation


class UserPreference: NSObject {

    var distance: Int = 0
    var minAge: Int = 0
    var maxAge: Int = 0
    var budget: Budget = .Cheap
    var categories: Set<SpotCategory> = []
    var offerings: Set<Offering> = []
    var musicGenres: Set<MusicGenre> = []
    
    
    enum SpotCategory {
    
     case Lounge , Bar, Club ,  SportsBar  , GayBar
        
    }
    
    enum Offering {
        
        case Coat, Karaoke, Food
    }
    
    
}
