//
//  DeViewController.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-23.
//

import UIKit

class DeViewController: UIViewController {
    
    var txtFormFVCD = Purchase()
        
    @IBOutlet weak var Item: UILabel!
    @IBOutlet weak var Quantity: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backBarBtnItem = UIBarButtonItem()
            backBarBtnItem.title = "Manager Panel"
            navigationItem.backBarButtonItem = backBarBtnItem
        
        Item.text = txtFormFVCD.type
        Quantity.text = txtFormFVCD.Qnty.description
        Total.text = txtFormFVCD.output
        Date.text = txtFormFVCD.dateTimeString
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

