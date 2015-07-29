//
//  ViewController.swift
//  ImageViewTest
//
//  Created by 周梦 on 7/28/15.
//  Copyright (c) 2015 野狗部落. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backgroundImage : UIImageView?
    @IBOutlet var myLabel : UILabel?
    
    var imageList : [String] = ["DDOS_1.jpg","DDOS_2.jpg"];
    
    var nameList : [String] = ["A ", "B "];
    
    let maxImages = 1;
    var imageIndex :NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundImage!.image = UIImage(named: imageList[imageIndex])
        myLabel!.text = nameList[imageIndex]
        
        
    }

    @IBAction func shareImage(){
        let firstActivityItem = "Check out my great picture"
        let pictureActivityItem : UIImage = UIImage(named: imageList[imageIndex])!
        
        let aV : UIActivityViewController = UIActivityViewController(activityItems: [firstActivityItem,pictureActivityItem], applicationActivities: nil);
        
        presentViewController(aV, animated: true, completion: nil);
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextImage(){
        imageIndex++
        if imageIndex > maxImages {
            imageIndex = 0
        }
        backgroundImage!.image = UIImage(named: imageList[imageIndex])
        myLabel!.text = nameList[imageIndex]
    }

}

