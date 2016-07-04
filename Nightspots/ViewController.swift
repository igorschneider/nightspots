
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var images = [UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo"),UIImage(named:"stereo")]
    
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
        return 13
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.eventsTableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! EventCustomCellTableViewCell
        
        cell.photo.image = images[indexPath.row]
        
        return cell
    }
    
   
}

