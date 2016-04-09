//
//  ViewController.swift
//  PracticoDeTabla
//
//  Created by SP07 on 8/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let data = son los datos que tengo en el array
        
        let dequeued: AnyObject = tableViewPrueba.dequeueReusableCellWithIdentifier("CeldaPrueba", forIndexPath: indexPath)
        let cell = dequeued as! UITableViewCell
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableViewPrueba.delegate =  self
        tableViewPrueba.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    @IBOutlet var tableViewPrueba: UITableView!

}

