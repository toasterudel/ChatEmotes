//
//  MyCollectionViewCell.swift
//  ChatEmotes MessagesExtension
//
//  Created by Chris Rudel on 2/25/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage){
        imageView.image = image
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    func configure(with link: String){
        if let url = URL(string: link){
            //print(url)
            let task = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
                if error != nil{
                    print(error ?? "")
                    return
                }
                DispatchQueue.main.async {
                    let image = UIImage(data: data!)
                    self.imageView.image = image
                }
            } )
            task.resume()
        }
    }

}
