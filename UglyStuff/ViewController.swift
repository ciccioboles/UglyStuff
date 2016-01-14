//
//  ViewController.swift
//  UglyStuff
//
//  Created by dev on 1/13/16.
//  Copyright © 2016 ciccio boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var uglyStuff = ["http://i.telegraph.co.uk/multimedia/archive/01650/ugly-dog460_1650068c.jpg", "http://www.chilloutpoint.com/images/2010/05/top-ugliest-dogs/ugliest-dog-in-the-world-13.jpg", "http://blog.newscom.com/wp-content/uploads/2011/06/spnphotos213955-WH160805A_01028.jpg", "http://usvsth3m.com/wp-content/uploads/2014/06/M8pI1Mv.jpg", "http://www.gannett-cdn.com/-mm-/f0e712eaade042e30646153ce60abe639838394e/c=10-0-581-428&r=x404&c=534x401/local/-/media/Phoenix/Phoenix/2014/06/20/1403283857000-photo-4.JPG", "http://media.kansascity.com/static/django-media/kc_contact//uploaded/2011/ugly-dogs/winner_2008.jpg", "http://cdn3-www.webecoist.momtastic.com/assets/uploads/2010/06/ugliest_animals_EP.jpg"]
    
    
    var uglyTitles = ["Fork he's ugly", "Holy! Someone shoot that thing", "Please god kill that thing", "Put that thing down", "Kill that beast"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyStuff[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "dog")
            }
            
            cell.configureCell(img, text: uglyTitles[indexPath.row])
            return cell
        }else {
            return UglyCell()
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyStuff.count
    }
    
}

