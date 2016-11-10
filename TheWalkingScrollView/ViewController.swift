//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Brian Bresen on 11/10/16.
//  Copyright © 2016 BeeHive Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 370
    let HEIGHT: CGFloat = 400
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 1...5 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            imgView.contentMode = UIViewContentMode(rawValue: 1)!
        
            scrollView.addSubview(imgView)
  
            imgView.frame = CGRect(x: -WIDTH + (WIDTH * CGFloat(x)), y: 277, width: WIDTH, height: HEIGHT)
        }
        
        scrollView.contentSize = CGSize(width: WIDTH * 5, height: scrollView.frame.size.height)
    }
}

