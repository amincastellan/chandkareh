//
//  serviceSelection.swift
//  chandkareh
//
//  Created by ameen castellan on 11/30/18.
//  Copyright © 2018 ameen castellan. All rights reserved.
//

import UIKit

class serviceSelectionVC: UIViewController {
    var servicee: Servicee!

    override func viewDidLoad() {
        super.viewDidLoad()
        pcSelected.backgroundColor = UIColor.red
        HCselected.backgroundColor = UIColor.red
        internetSelected.backgroundColor = UIColor.red

       servicee = Servicee()
        
    }
    
    @IBOutlet weak var HCselected: BorderButton!
    @IBOutlet weak var pcSelected: BorderButton!
    @IBOutlet weak var internetSelected: BorderButton!
    

  
    
    
    
    @IBAction func onPCtapped(_ sender: Any) {
        
        if pcSelected.backgroundColor == UIColor.red{
            pcSelected.backgroundColor = UIColor.black
            HCselected.backgroundColor = UIColor.red
            internetSelected.backgroundColor = UIColor.red
        }
      selectService(serviceType: "computer")
    }
    @IBAction func onHCtapped(_ sender: Any) {
        if HCselected.backgroundColor == UIColor.red{
            HCselected.backgroundColor = UIColor.black
            pcSelected.backgroundColor = UIColor.red
            internetSelected.backgroundColor = UIColor.red
        }
        selectService(serviceType: "heat-cold")
    }
    @IBAction func onInternettapped(_ sender: Any) {
        if internetSelected.backgroundColor == UIColor.red{
            internetSelected.backgroundColor = UIColor.black
            HCselected.backgroundColor = UIColor.red
            pcSelected.backgroundColor = UIColor.red
        }
        selectService(serviceType: "internet")
    }
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func unwindFromserviceType(unwindsegue: UIStoryboardSegue){
        
    }
    func selectService(serviceType: String){
        servicee.serviceSelection = serviceType
        nextBtn.isEnabled = true
    }

}
