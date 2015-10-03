//
//  DetailViewController.swift
//  DoctorNearby
//
//  Created by Vince Zhang on 2015-09-23.
//  Copyright © 2015 AkhalTech. All rights reserved.
//

import UIKit
import QuartzCore

class SearchDetailViewController: SAInboxDetailViewController {
    
    var content: Doctor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        let nib = UINib(nibName: DetailViewCell.kCellIdentifier, bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: DetailViewCell.kCellIdentifier)
        
        title = content?.name
        
        tableView.separatorInset = UIEdgeInsetsZero
        tableView.layoutMargins = UIEdgeInsetsZero
        
        let color = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
        appearance.barTintColor = .whiteColor()
        appearance.tintColor = color
        appearance.titleTextAttributes = [NSForegroundColorAttributeName : color]
        enabledViewControllerBasedAppearance = true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SearchDetailViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(DetailViewCell.kCellIdentifier)!
        
        if let cell = cell as? DetailViewCell {
            if let doctorContent = content {
                cell.content = doctorContent
                cell.mapButton.addTarget(self, action: "showMapView:", forControlEvents:UIControlEvents.TouchUpInside)
            }
        }
        
        cell.layoutMargins = UIEdgeInsetsZero
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGRectGetHeight(tableView.frame)
    }
    
    func showMapView(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mapViewController = storyboard.instantiateViewControllerWithIdentifier("MapViewController") as! MapViewController
        if let doctorContent = content {
            mapViewController.address = doctorContent.address
            mapViewController.contact = doctorContent.contact
        }
        self.presentViewController(mapViewController, animated: true, completion: nil)
        
    }
}