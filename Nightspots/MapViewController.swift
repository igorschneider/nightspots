

import Foundation
import UIKit
import MapKit

class MapViewController : UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    var venue : Venue?
    var selectedLocation : LocationModel?
    var listVenue : Set<Venue> = []
    
    
    
    
    func addLocations(){
      
        
        var generator = listVenue.generate()
       
        
        while let item = generator.next() {
            
            var poiCoodinates: CLLocationCoordinate2D = CLLocationCoordinate2D()
            
            poiCoodinates.latitude = CDouble((item.location!.latitude)!)!
            poiCoodinates.longitude = CDouble((item.location!.longitude)!)!
            // Zoom to region
            let viewRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(poiCoodinates, 600, 600)
            self.mapView.setRegion(viewRegion, animated: true)
            // Plot pin
            let pin: MKPointAnnotation = MKPointAnnotation()
            pin.coordinate = poiCoodinates
            self.mapView.addAnnotation(pin)
        }

        
    
    
    
    }
    
    func loadLocations(){
         var venue2 : Venue?
        
        venue = Venue()
        venue!.location = LocationModel()
        venue?.location?.address = "Canuto do val"
        venue?.location?.latitude = "-23.540279"
        venue?.location?.longitude = "-46.651963"
        
        venue2 = Venue()
        venue2?.location = LocationModel()
        venue2?.location?.address = "somwthing"
        venue2?.location?.latitude = "-23.540109"
        venue2?.location?.longitude = "-46.651313"
        
        listVenue.insert(venue!)
        listVenue.insert(venue2!)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    
        
        // If there are many locations
        
        loadLocations()
        addLocations()
        
        
        
        
       
        
    }
    
    
   
}