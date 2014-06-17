//
//  AddToDoItemViewController.swift
//  PracticeFour
//
//  Created by Eric Drews on 6/11/14.
//  Copyright (c) 2014 Drews. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    @IBOutlet var textField : UITextField
    @IBOutlet var doneButton : UIBarButtonItem
    
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if(sender as? NSObject != doneButton) {
            return
        }
        toDoItemList.addToDoItem(textField.text, comp: false, date: NSDate(timeIntervalSinceNow: 0))
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
