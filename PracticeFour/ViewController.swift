//
//  ViewController.swift
//  PracticeFour
//
//  Created by Eric Drews on 6/11/14.
//  Copyright (c) 2014 Drews. All rights reserved.
//

import UIKit

@objc(ViewController) class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadInitialData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue!) {
        tableView.reloadData()
    }
    
    func loadInitialData() {
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return toDoItemList.toDoItems.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        tableView.delegate = self
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "ListPrototypeCell")
        var currentToDoItem: ToDoItem = toDoItemList.toDoItems[indexPath.row]
        
        cell.text = currentToDoItem.itemName
        if(currentToDoItem.completed) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var currentToDoItem: ToDoItem = toDoItemList.toDoItems[indexPath.row]
        toDoItemList.toggleComplete(indexPath.row)
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
        
    }
    
}

