//
//  ToDoItem.swift
//  PracticeFour
//
//  Created by Eric Drews on 6/12/14.
//  Copyright (c) 2014 Drews. All rights reserved.
//

import Foundation

var toDoItemList: ToDoItemList = ToDoItemList()

struct ToDoItem {
    var itemName: String = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate(timeIntervalSinceNow: 0)
}

class ToDoItemList {
    
    var toDoItems = ToDoItem[]()
    
    func addToDoItem(name:String, comp:Bool, date: NSDate) {
        toDoItems.append(ToDoItem(itemName: name, completed: comp, creationDate: date))
    }
    
    func toggleComplete(index:NSNumber) {
        toDoItems[Int(index)].completed = !toDoItems[Int(index)].completed
    }
    
}
