//
//  BucketItemCell.swift
//  DataApp
//
//  Created by Baugh, Tyler on 11/30/18.
//  Copyright © 2018 Baugh, Tyler. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    
    var currentBucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    private func randomEmoji()->String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x2F64F
        let symbolStart = 0x1F6890
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 70
        let symbolRange = 70
        
        let ascii = emojiStart +
            Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
        
    }
    
    private func updateCellView() -> Void
    {
        if (currentBucketItem != nil)
        {
            bucketItemSignature.text = currentBucketItem.itemAuthor
            bucketItemText.text = currentBucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "Author goes here"
            bucketItemText.text = "Bucket item contents here"
        }
        
        bucketItemSymbol.text = randomEmoji()
    }
   /*
    public override func awakeFromNib()
    {
        super.awakeFromNib()
        //Initialization code
    }
    
    
    public override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(slected, animated: animated)
    }
 */
}
