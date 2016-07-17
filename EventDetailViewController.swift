

import Foundation
import TNImageSliderViewController


class EventDetailViewController : UIViewController {
var slideViewController = TNImageSliderViewController()


 override func viewDidAppear(animated: Bool) {
    
    slideViewController.images = [UIImage(named:"stereo")!,UIImage(named:"castle")!,UIImage(named:"yellow")!,UIImage(named:"aerobar")!,UIImage(named:"red")!]

    
   }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? TNImageSliderViewController
            where segue.identifier == "seg_imageSlider" {
            
            self.slideViewController = vc
        }
    }

    
    
    
    }



