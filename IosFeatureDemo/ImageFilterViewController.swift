//
//  ImageFilterViewController.swift
//  IosFeatureDemo
//
//  Created by shoya on 2024/03/23.
//

import UIKit

class ImageFilterViewController: UIViewController {
    @IBOutlet var imageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let ciImage = CIImage(image: imageView.image!)

        let filter = CIFilter(name: "CIPhotoEffectMono")!
        filter.setDefaults()
        filter.setValue(ciImage, forKey: kCIInputImageKey)

        let outputImage = filter.outputImage
        imageView.image = UIImage(ciImage: outputImage!)
    }
}
