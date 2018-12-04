//
//  computerServiceVC.swift
//  chandkareh
//
//  Created by ameen castellan on 12/1/18.
//  Copyright © 2018 ameen castellan. All rights reserved.
//

import UIKit

class computerServiceVC: UIViewController {
    var servicee: Servicee!

    override func viewDidLoad() {
        super.viewDidLoad()
        GameSelected.backgroundColor = UIColor.red
        WindowsSelected.backgroundColor = UIColor.red
        SoftwareSelected.backgroundColor = UIColor.red
        
        servicee = Servicee()
        
    }
    
    @IBOutlet weak var WindowsSelected: BorderButton!
    @IBOutlet weak var GameSelected: BorderButton!
    @IBOutlet weak var SoftwareSelected: BorderButton!
    
    
    
    
    
    @IBAction func onWindowsTapped(_ sender: Any) {
        if WindowsSelected.backgroundColor == UIColor.red{
        WindowsSelected.backgroundColor = UIColor.black
        GameSelected.backgroundColor = UIColor.red
        SoftwareSelected.backgroundColor = UIColor.red
        }
        selectService(serviceType: "Windows")
    }
    @IBAction func onGametapped(_ sender: Any) {
        if GameSelected.backgroundColor == UIColor.red{
            GameSelected.backgroundColor = UIColor.black
            WindowsSelected.backgroundColor = UIColor.red
            SoftwareSelected.backgroundColor = UIColor.red
        }
        selectService(serviceType: "Game")
    }
    @IBAction func onSoftwaretapped(_ sender: Any) {
        if SoftwareSelected.backgroundColor == UIColor.red{
            SoftwareSelected.backgroundColor = UIColor.black
            WindowsSelected.backgroundColor = UIColor.red
            GameSelected.backgroundColor = UIColor.red
        }
        selectService(serviceType: "Software")
    }
    @IBOutlet weak var nextBtn: BorderButton!
    

        
    
    func selectService(serviceType: String){
        servicee.serviceSelection = serviceType
        nextBtn.isEnabled = true
    }

        
    
    


}
