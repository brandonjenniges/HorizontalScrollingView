//
//  Copyright © 2015 Brandon Jenniges. All rights reserved.
//

import UIKit

class SideScrollingFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        scrollDirection = .Horizontal
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        scrollDirection = .Horizontal
    }
    
}
