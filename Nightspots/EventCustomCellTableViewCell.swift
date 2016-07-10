

import UIKit

class EventCustomCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var spotDistance: UILabel!
    @IBOutlet weak var spotName: UILabel!
  
    @IBOutlet weak var spotEventDesc: UILabel!
    @IBOutlet weak var spotEventDate: UILabel!
    @IBOutlet weak var photo: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

