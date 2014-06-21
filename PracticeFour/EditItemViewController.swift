//
//  EditItemViewController.swift
//  PracticeFour
//
//  Created by Eric Drews on 6/21/14.
//  Copyright (c) 2014 Drews. All rights reserved.
//

import UIKit

class EditItemViewController: UIViewController {
    
    @IBOutlet var toDoItemTextField : UITextField
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Initialization code here.
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    

}
