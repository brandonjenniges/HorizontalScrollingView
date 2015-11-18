//
//  Copyright © 2015 Brandon Jenniges. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var contents = [String]()
    
    @IBOutlet weak var sideScrollerView: SideScrollingCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...50 {
            contents.append("\(index)")
        }
        
        sideScrollerView.setItemSize(CGSizeMake(200, 200))
    }
    
    // MARK : UIColllectionView data source
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contents.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        
        if let label = cell.contentView.viewWithTag(1) as? UILabel {
            label.text = contents[indexPath.row]
            label.textColor = UIColor.whiteColor()
        }
        
        cell.backgroundColor = UIColor.lightGrayColor()
        return cell
    }
}