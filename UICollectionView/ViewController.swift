//
//  ViewController.swift
//  UICollectionView
//
//  Created by miceli on 5/10/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptions: UILabel!
    var detiltle = String()
    var Detail = String()
    var Image1 = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        title1.text = detiltle
        image.image = Image1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
