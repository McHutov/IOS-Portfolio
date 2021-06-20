//
//  ViewController.swift
//  Vending-Machine
//
//  Created by Дастан Махутов on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var testing: UIView!
    @IBOutlet weak var rollButtonLabel: UIButton!
    var arr = [UIImage(systemName: "die.face.1"), UIImage(systemName: "die.face.2"), UIImage(systemName: "die.face.3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designScreen()
    }
    
    @IBAction func rollButtonTapped(_ sender: Any) {
        firstImageView.image = arr.randomElement()!
        secondImageView.image = arr.randomElement()!
        thirdImageView.image = arr.randomElement()!
        
        if checkForWin(){
            showAlert()
        }
    }
    
    func checkForWin() -> Bool{
        if firstImageView.image == secondImageView.image {
            if firstImageView.image == thirdImageView.image {
                return true
            }
        }
        
        return false
    }
    
    func designScreen(){
        testing.layer.cornerRadius = 25.0
        testing.layer.borderColor = UIColor(rgb: 0x564A4A).cgColor
        testing.layer.borderWidth = 2
        
        rollButtonLabel.layer.borderWidth = 2;
        rollButtonLabel.layer.borderColor = UIColor(rgb: 0x564A4A).cgColor
        rollButtonLabel.layer.cornerRadius = 25.0
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Prize", message: "You won a prize", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Pick Up", style: .cancel, handler: { (action) in
            print("You taken away a prize")
        }))
        present(alert, animated: true)
    }
    
    
}

