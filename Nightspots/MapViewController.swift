

import Foundation
import UIKit
import MapKit

class MapViewController : UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    var selectedLocation : LocationModel?
    
    
    
    func loadLocation(){
        
        // temporary hardcoaded function for testing
    
        selectedLocation = LocationModel()
        selectedLocation!.name = "Ale Bar"
        selectedLocation!.address = "Canuto do val"
        selectedLocation!.latitude = "-23.540279"
        selectedLocation!.longitude = "-46.651963"
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        
        loadLocation()
        // Create coordinates from location lat/long
        var poiCoodinates: CLLocationCoordinate2D = CLLocationCoordinate2D()
        
        poiCoodinates.latitude = CDouble(self.selectedLocation!.latitude!)!
        poiCoodinates.longitude = CDouble(self.selectedLocation!.longitude!)!
        // Zoom to region
        let viewRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(poiCoodinates, 600, 600)
        self.mapView.setRegion(viewRegion, animated: true)
        // Plot pin
        let pin: MKPointAnnotation = MKPointAnnotation()
        pin.coordinate = poiCoodinates
        self.mapView.addAnnotation(pin)
        
        //add title to the pin
        pin.title = selectedLocation!.name
        
    }
    
    
   
}