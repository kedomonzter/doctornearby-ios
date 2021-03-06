//
//  PillAddTableViewController.swift
//  DoctorNearby
//
//  Created by Vince Zhang on 2015-10-09.
//  Copyright © 2015 AkhalTech. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class PillAddTableViewController: UITableViewController {

    var eatTimeDatePickerCellID = "eatTimeDatePickerCell"
    var names = ["section1": ["medicineCell", "eatTimeCell", "repeatCell"]]
    var dateFormatter = NSDateFormatter()
    
    struct Objects {
        var sectionName : String!
        var sectionObjects : [String]!
    }
    
    var objectArray = [Objects]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "handleTap:"))
        
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        dateFormatter.dateFormat = "MMM dd, yyyy hh:mm a"
        
        for (key, value) in names {
            objectArray.append(Objects(sectionName: key, sectionObjects: value))
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectArray.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectArray[section].sectionObjects.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cellID = objectArray[indexPath.section].sectionObjects[indexPath.row]
        return cellID == "eatTimeDatePickerCell" ? 216 : tableView.rowHeight
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = GlobalConstant.defaultColor
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        headerView.textLabel?.textColor = UIColor.whiteColor()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        let cellID = objectArray[indexPath.section].sectionObjects[indexPath.row]
        if cellID == "medicineCell" {
            cell = tableView.dequeueReusableCellWithIdentifier(cellID)! as! PillNameCell
        }else {
            cell = tableView.dequeueReusableCellWithIdentifier(cellID)! as UITableViewCell
        }
        
        let now = NSDate()
        if cellID == "eatTimeCell" {
            let afterTenMinsNow = now.dateByAddingTimeInterval(600)
            cell?.detailTextLabel?.text = dateFormatter.stringFromDate(afterTenMinsNow)
        }else if cellID == "repeatCell" {
            cell?.detailTextLabel?.text = "Never"
        }
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if cell?.reuseIdentifier == "eatTimeCell" {
            toggleDatePickerForSelectedIndexPath(indexPath, cellID: "eatTimeDatePickerCell")
        }else {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    func toggleDatePickerForSelectedIndexPath(indexPath: NSIndexPath, cellID: String) {
        tableView.beginUpdates()
        let datePickerIndex = indexPath.row + 1
        let indexPaths = [NSIndexPath(forRow: datePickerIndex, inSection: indexPath.section)]
        let hasDatePicker = objectArray[indexPath.section].sectionObjects.contains(cellID)
        if hasDatePicker {
            objectArray[indexPath.section].sectionObjects.removeAtIndex(datePickerIndex)
            tableView.deleteRowsAtIndexPaths(indexPaths, withRowAnimation: .Fade)
            tableView.deselectRowAtIndexPath(indexPath, animated:true)
        }else {
            objectArray[indexPath.section].sectionObjects.insert(cellID, atIndex: datePickerIndex)
            tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: .Fade)
            tableView.cellForRowAtIndexPath(indexPath)?.contentView.backgroundColor = GlobalConstant.cellSelectedColor
        }
        tableView.endUpdates()
    }
    
    @IBAction func changeEatTimeDatePicker(sender: AnyObject) {
        let row: Int = objectArray[0].sectionObjects.indexOf("eatTimeCell")!
        let targetedCellIndexPath: NSIndexPath = NSIndexPath(forRow: row, inSection: 0)
        let cell = tableView.cellForRowAtIndexPath(targetedCellIndexPath)
        let targetedDatePicker = sender as! UIDatePicker
        cell?.detailTextLabel?.text = dateFormatter.stringFromDate(targetedDatePicker.date)
    }
    
    @IBAction func clickCancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func clickSaveButton(sender: AnyObject) {
        
        let medicineParameters: [String: AnyObject] = [
            "userId": GlobalConstant.userId(),
            "name": getLabelText("medicineCell"),
            "periodMinutes": caculateRepeatTimeInMinutes(),
            "startTime": getDateFromString("eatTimeCell"),
            "deviceToken": GlobalFlag.deviceToken
        ]

        if (medicineParameters["name"] as! String).trim() == "" {
            self.showAlertPopup("Name is required", message: "Please input name in the field.")
        }else {
            let parameters: [String: AnyObject] = ["medicine": medicineParameters]
            
            Alamofire.request(.POST, "\(GlobalFlag.baseServerURL)/user/medicine/add", parameters: parameters, encoding: .JSON)
                .responseData { (request: NSURLRequest?, response: NSHTTPURLResponse?, result: Result<NSData>) -> Void in
                    
                    switch result {
                    case .Success(_):
                        GlobalFlag.needRefreshPill = true
                        self.dismissViewControllerAnimated(true, completion: nil)
                    case .Failure(let data, let error):
                        print("Request failed with error: \(error)")
                        if let data = data {
                            print("Response data: \(NSString(data: data, encoding: NSUTF8StringEncoding)!)")
                        }
                    }
            }
        }
    }
    
    func getDateFromString(cellID: String) -> String {
        let row: Int = objectArray[0].sectionObjects.indexOf(cellID)!
        let targetedCellIndexPath: NSIndexPath = NSIndexPath(forRow: row, inSection: 0)
        let cell = tableView.cellForRowAtIndexPath(targetedCellIndexPath)
        let time = Int64(dateFormatter.dateFromString((cell?.detailTextLabel?.text)!)!.timeIntervalSince1970 * 1000)
        return "\(time)"
    }
    
    func caculateRepeatTimeInMinutes() -> Int {
        var minutes = 0
        let row: Int = objectArray[0].sectionObjects.indexOf("repeatCell")!
        let targetedCellIndexPath: NSIndexPath = NSIndexPath(forRow: row, inSection: 0)
        let cell = tableView.cellForRowAtIndexPath(targetedCellIndexPath)
        let labelText = cell?.detailTextLabel?.text
        
        ["Every 4 hours", "Every 6 hours", "Every 8 hour", "Every 12 hours", "Every 1 day", "Every 2 days", "Every 1 week"]
        
        if labelText == "Every 4 hours" {
            minutes = 60 * 4
        }else if labelText == "Every 6 hours" {
            minutes = 60 * 6
        }else if labelText == "Every 8 hours" {
            minutes = 60 * 8
        }else if labelText == "Every 12 hours" {
            minutes = 60 * 12
        }else if labelText == "Every 1 day" {
            minutes = 60 * 24 * 1
        }else if labelText == "Every 2 day" {
            minutes = 60 * 24 * 2
        }else if labelText == "Every 1 week" {
            minutes = 60 * 24 * 7
        }else {
            minutes = 0
        }
        
        return minutes
    }
    
    func getLabelText(cellID: String) -> String {
        let row: Int = objectArray[0].sectionObjects.indexOf(cellID)!
        let targetedCellIndexPath: NSIndexPath = NSIndexPath(forRow: row, inSection: 0)
        var labelText = ""
        if cellID == "medicineCell" {
            let cell = tableView.cellForRowAtIndexPath(targetedCellIndexPath) as! PillNameCell
            labelText = cell.nameTextField.text!
        }
        return labelText
    }
    
    func doRepeatWithData(data: String) {
        let row: Int = objectArray[0].sectionObjects.indexOf("repeatCell")!
        let targetedCellIndexPath: NSIndexPath = NSIndexPath(forRow: row, inSection: 0)
        let cell = tableView.cellForRowAtIndexPath(targetedCellIndexPath)
        cell?.detailTextLabel?.text = data
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "popupRepeatSegue" {
            if let viewController = segue.destinationViewController as? PillRepeatTableViewController {
                viewController.onDataAvailable = {[weak self]
                    (data) in
                    if let weakSelf = self {
                        weakSelf.doRepeatWithData(data)
                    }
                }
            }
        }
    }

}
