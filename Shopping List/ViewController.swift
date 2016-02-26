//
//  ViewController.swift
//  Shopping List
//
//  Created by Jacqueline Richard on 2016-02-26.
//  Copyright © 2016 100092753. All rights reserved.
//  This is a simple shopping list type thing that lets you add some stuff 
//  into a list and add or subtract quantity.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //outlets for the labels that are the quantity of the shopping list item
    @IBOutlet weak var itemNum01: UILabel!
    @IBOutlet weak var itemNum02: UILabel!
    @IBOutlet weak var itemNum03: UILabel!
    @IBOutlet weak var itemNum04: UILabel!
    @IBOutlet weak var itemNum05: UILabel!
    
    //outlets for the steppers
    @IBOutlet weak var stepper01: UIStepper!
    @IBOutlet weak var stepper02: UIStepper!
    @IBOutlet weak var stepper03: UIStepper!
    @IBOutlet weak var stepper04: UIStepper!
    @IBOutlet weak var stepper05: UIStepper!
    
    //actions for the steppers to set label numbers
    @IBAction func ActionS01(sender: AnyObject) {
        itemNum01.text = "\(Int(stepper01.value))"
    }
    @IBAction func actionS02(sender: AnyObject) {
        itemNum02.text = "\(Int(stepper02.value))"
    }
    @IBAction func actionS03(sender: AnyObject) {
        itemNum03.text = "\(Int(stepper03.value))"
    }
    @IBAction func actionS04(sender: AnyObject) {
        itemNum04.text = "\(Int(stepper04.value))"
    }
    @IBAction func actionS05(sender: AnyObject) {
        itemNum05.text = "\(Int(stepper05.value))"
    }
    
    //shopping list textfield outlets
    @IBOutlet weak var listTitle: UITextField!
    @IBOutlet weak var itemName01: UITextField!
    @IBOutlet weak var itemName02: UITextField!
    @IBOutlet weak var itemName03: UITextField!
    @IBOutlet weak var itemName04: UITextField!
    @IBOutlet weak var itemName05: UITextField!
    

    //cancel button outlet and action
    @IBOutlet weak var cancelButt: UIButton!
    @IBAction func cancelButtAct(sender: AnyObject) {
        //reset the shopping list quantities
        itemNum01.text = "0"
        stepper01.value = 0
        
        itemNum02.text = "0"
        stepper02.value = 0
        
        itemNum03.text = "0"
        stepper03.value = 0
        
        itemNum04.text = "0"
        stepper04.value = 0
        
        itemNum05.text = "0"
        stepper05.value = 0
        
        //reset the shopping list textfields
        listTitle.text = "My Shopping List"
        itemName01.text = ""
        itemName02.text = ""
        itemName03.text = ""
        itemName04.text = ""
        itemName05.text = ""
        
    }
    
}

