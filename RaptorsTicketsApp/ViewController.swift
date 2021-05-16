//
//  ViewController.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-15.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var Output: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var levelsOutput: UILabel!
    
    @IBOutlet weak var qnty: UILabel!
    
    var pickerView = UIPickerView()
        
    var allmd = [Ticket]()
    
    var purch = Purchase()
    
    var number:Double = 0.0
    
    var compon:Int = 0
        
    var date:Date? = nil
    
    var newPr = Purchase()
    
    var pr = [Purchase]()
    
    var type:String = ""
        
    var myModel : ModelManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        picker.reloadAllComponents()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mCell" {
            
            let svc = segue.destination as! ManagerViewController
            svc.model = myModel
            
            let name = pr
            svc.txtFormFVC1 = name
        }
    }
    
    @IBAction func Numbers(_ sender: Any) {
        
        let clickNum = sender as! UIButton
        
        number = Double(clickNum.currentTitle!)!
                
        let x = myModel!.Cal(num: number, compon:compon)
        
        qnty.text = number.description
        
        Output.text = x.description
    }
    
    @IBAction func Buy(_ sender: Any) {
        
        let numb = NumberFormatter().number(from: qnty.text!)!.intValue
        
        if (compon == 0){
            let y = myModel!.buy(num: numb, com:compon)
            myModel!.allTickets[compon].quantity = y
            picker.reloadAllComponents()
            let type = myModel!.allTickets[compon].type
            let date:String=""
            let output = Output.text
            newPr = Purchase(Qnty:numb, comp:compon,Type:type, dateTimeString:date, output: output!)
            pr.append(newPr)
        } else if(compon == 1){
            let y = myModel!.buy(num: numb, com:compon)
            myModel!.allTickets[compon].quantity = y
            let type = myModel!.allTickets[compon].type
            picker.reloadAllComponents()
            let date:String=""
            let output = Output.text
            newPr = Purchase(Qnty:numb, comp:compon, Type:type, dateTimeString: date, output: output!)
            pr.append(newPr)
        } else if(compon == 2){
            let y = myModel!.buy(num: numb, com:compon)
            myModel!.allTickets[compon].quantity = y
            picker.reloadAllComponents()
            let type =  myModel!.allTickets[compon].type
            let date:String = ""
            let output = Output.text
            newPr = Purchase(Qnty:numb, comp:compon,Type:type, dateTimeString: date, output: output!)
            pr.append(newPr)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        let a = myModel!.allTickets[row].type
        let b = myModel!.allTickets[row].quantity
        let c = myModel!.allTickets[row].price
        let d = a.description + "  " + b.description + "  " + c.description

        return d
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        compon = row
        
        if row == 0 {
            levelsOutput.text = myModel!.allTickets[row].type
        } else if row == 1 {
            levelsOutput.text = myModel!.allTickets[row].type
        } else if row == 2 {
            levelsOutput.text = myModel!.allTickets[row].type
        }
    }
}
