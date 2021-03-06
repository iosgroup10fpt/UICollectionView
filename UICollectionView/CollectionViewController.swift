//
//  CollectionViewController.swift
//  UICollectionView
//
//  Created by imac on 5/8/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    //@IBOutlet weak var images: UIImageView!
    var listStudents : [Data] = {
        var listStudents = Data.arrayStudents()
        return listStudents
    }()
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//        self.navigationItem.rightBarButtonItem = self.editButtonItem
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Delete", style : .plain , target : self , action: Selector(("deleteSelectedItemsAction:")))
        // Do any additional setup after loading the view.
    }
    func deleteSelectedItemsAction(sender: UIBarButtonItem){
        print("delete")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return listStudents.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return listStudents[section].listStudents.count
    }
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let img = UIImage(named  : listStudents[indexPath.section].listStudents[indexPath.row].image)
        if (img != nil)
        {
            cell.imageStudents.image = img
        }
        else
        {
            cell.imageStudents.image = UIImage(named: "Lollipop.png" )!
        }

        //return cell
        /*let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if let img = UIImage(named  : listStudents[indexPath.section].listStudents[indexPath.row].image){
            cell.
        }
        else
        {
            cell.imageStudents?.image = UIImage(named: "Lollipop.png" )!
        }
        //cell.imageStudents?.image = image1
    
        // Configure the cell
    */
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerCell", for: indexPath) as! CollectionReusableView
        header.label.text = listStudents[indexPath.section].listStudents[indexPath.row].name
        return header
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        temp = listStudents[indexPath.section].listStudents[indexPath.row].name
        temp2 = listStudents[indexPath.section].listStudents[indexPath.row].image
        temp1 = listStudents[indexPath.section].listStudents[indexPath.row].university
//        if (img != nil)
//        {
           // temp2 = img
//        }
//        else
//        {
//            temp2 = "Lollipop.png"
//        }
        
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        controller.detiltle = temp
        controller.Image1 = temp2
        controller.Detail = temp1
        self.navigationController?.pushViewController(controller, animated: true)

      //  temp2 = listStudents[indexPath.section].listStudents[indexPath.row].image
        
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
