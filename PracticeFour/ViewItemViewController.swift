//
//  ViewItemViewController.swift
//  PracticeFour
//
//  Created by Eric Drews on 6/21/14.
//  Copyright (c) 2014 Drews. All rights reserved.
//

import UIKit

@objc(ViewItemViewController) class ViewItemViewController: UIViewController {
    
    @IBOutlet var toDoTextField : UILabel
    @IBOutlet var dateTextField : UILabel
   
    var formatter:NSDateFormatter = NSDateFormatter()
    
    var currentToDoItem: ToDoItem = toDoItemList.toDoItems[0]

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Initialization code here.
    }
    
    @IBAction func unwindToViewItem(segue: UIStoryboardSegue!) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        toDoTextField.text = currentToDoItem.itemName
        // dateTextField.text = formatter.stringFromDate(currentToDoItem.creationDate)
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    func setCurrentToDoItem(item:ToDoItem) {
        currentToDoItem = item
    }

}
