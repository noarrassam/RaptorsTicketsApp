//
//  ResViewController.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-22.
//

import UIKit

class ResViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var txtFormFVCRE = [Purchase]()
    
    var modelR:ModelManager?

    @IBOutlet weak var PickerView: UIPickerView!
    
    @IBOutlet weak var Quantity: UITextField!
    
    var compon:Int = 0
    
    var number:Double = 0.0
        
    var y:Int = 0
        
    var rowTitle:Int?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let backBarBtnItem = UIBarButtonItem()
            backBarBtnItem.title = "Manager Panel"
            navigationItem.backBarButtonItem = backBarBtnItem
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddTickets(_ sender: Any) {
        let numb = NumberFormatter().number(from: Quantity.text!)!.intValue
        
        if (compon == 0){
            let x = modelR!.AddTickets(num: numb, com: compon)
            modelR!.allTickets[compon].quantity = x
            PickerView.reloadAllComponents()
        } else if(compon == 1){
            let x = modelR!.AddTickets(num: numb, com: compon)
            modelR!.allTickets[compon].quantity = x
            PickerView.reloadAllComponents()
        } else if(compon == 2){
            let x = modelR!.AddTickets(num: numb, com: compon)
            modelR!.allTickets[compon].quantity = x
            PickerView.reloadAllComponents()
        }
    }
    
    @IBAction func Cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
                
        let a = modelR!.allTickets[row].type
        let b = modelR!.allTickets[row].quantity
        let c = modelR!.allTickets[row].price
        let d = a.description + "  " + b.description + "  " + c.description
        return d
}
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        compon = row
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
