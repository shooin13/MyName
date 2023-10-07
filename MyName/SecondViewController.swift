//
//  secondViewController.swift
//  MyName
//
//  Created by Павел Николаев on 04.10.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "Welcome", message: "This is myName App", preferredStyle: .actionSheet)
        
        present(alertController, animated: true)
        
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let actionIgnore = UIAlertAction(title: "Ignore", style: .default, handler: nil)
        
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        alertController.addAction(actionIgnore)
    }

    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
        self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        print("Back button was pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
