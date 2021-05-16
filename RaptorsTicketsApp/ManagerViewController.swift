//
//  ManagerViewController.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-22.
//

import UIKit

class ManagerViewController: UIViewController {
    
    var comp:Int = 0
    var qnty:Int = 0
    
    var txtFormFVC1 = [Purchase]()
    var txtFormFVC2 = Purchase()
    var model:ModelManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Cell") {
            let svc = segue.destination as! HistoryViewController
            let name = txtFormFVC1
            svc.txtFormFVC = name
        } else if (segue.identifier == "RCell") {
            let svc = segue.destination as! ResViewController
            svc.modelR = model
            let name = txtFormFVC1
            svc.txtFormFVCRE = name
        }
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
