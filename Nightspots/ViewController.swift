
import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var images = [UIImage(named:"stereo"),UIImage(named:"castle"),UIImage(named:"yellow"),UIImage(named:"aerobar"),UIImage(named:"red")]
    var spotnames = ["Stereo", "Mcgees","Lounge", "Awesome", "Victoria Club" ]
    var spotEventNames = ["Hip Hop All Night", "Kesha's concert", "Crazy night", "No idea" , ""]
    var spotEventDates = ["07/9","07/9","07/9","07/10","07/11"]
    var spotDistances = ["0.5 miles","1 mile","1.3 miles","2.3 miles","3.1 miles"]
    
    
    @IBOutlet weak var eventsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spotnames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.eventsTableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! EventCustomCellTableViewCell
        
       cell.photo.image = images[indexPath.row]
       cell.spotEventDesc.text = spotEventNames[indexPath.row]
       cell.spotName.text = spotnames[indexPath.row]
       cell.spotEventDate.text = spotEventDates[indexPath.row]
       cell.spotDistance.text = spotDistances[indexPath.row]
        
        return cell
    }
    
   
}

