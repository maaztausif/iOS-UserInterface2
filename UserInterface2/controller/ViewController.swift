//
//  ViewController.swift
//  UserInterface2
//
//  Created by maaz bin tausif on 09/12/2020.
//  Copyright © 2020 maaz bin tausif. All rights reserved.
//

import UIKit
import JellyGif

class ViewController: UIViewController ,JellyGifAnimatorDelegate{
    @IBOutlet weak var view_gif: UIView!
    @IBOutlet weak var image_Gif: UIImageView!
    @IBOutlet weak var btn_Go: UIButton!
    @IBOutlet weak var scroll_View: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn_Go?.layer.cornerRadius = (btn_Go?.frame.size.width ?? 0.0) / 2
        btn_Go?.clipsToBounds = true
        btn_Go?.layer.borderWidth = 3.0
//        let gold = UIColor(hex: "#0C50F8")
        btn_Go?.layer.borderColor = UIColor.blue.cgColor
//        0C50F8
        image_Gif.image = UIImage.gifImageWithName("winter")
        
//        let array = ["Title":"Hello"]
//        scroll_View.isPagingEnabled = true
////        scroll_View.contentSize = CGSize(width: self.view.bounds.width, height: "")
//        scroll_View.showsHorizontalScrollIndicator = true
        
        
        let textArray = ["job.title", "job.description"]
        for stage in 0...1{
            let label = UILabel()
            label.font = UIFont(name: "CenturyGothic", size: 20)
            label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            label.textAlignment = .center
            label.lineBreakMode = .byWordWrapping
            label.numberOfLines = 0
            label.text = textArray[stage]
            scroll_View.addSubview(label)
        }
        
        
    }
    
    
    @IBAction func btn_Send(_ sender: Any) {
//        performSegue(withIdentifier: "cc", sender: nil)


    }
    

}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
