//
//  Copyright © 2015 Brandon Jenniges. All rights reserved.
//

import UIKit

class SideScrollingCollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: SideScrollingFlowLayout())
        self.pagingEnabled = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.collectionViewLayout = SideScrollingFlowLayout()
        self.pagingEnabled = true
    }
    
    func setItemSize(itemSize:CGSize) {
        if let collectionViewLayout = self.collectionViewLayout as? SideScrollingFlowLayout {
            collectionViewLayout.itemSize = itemSize
        }
    }
}
