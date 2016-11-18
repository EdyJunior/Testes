//
//  ViewController.swift
//  Testes
//
//  Created by Edvaldo Junior on 18/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var player1: UIImageView!
    
    @IBOutlet weak var tf_1player1: UITextField!
    
    @IBOutlet weak var tf_2player1: UITextField!
    
    @IBOutlet weak var player2: UIImageView!
    
    @IBOutlet weak var tf_1player2: UITextField!
    
    @IBOutlet weak var tf_2player2: UITextField!
    
    @IBOutlet weak var Dado: UIImageView!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let back = #imageLiteral(resourceName: "back")
        
        self.view.backgroundColor = UIColor(patternImage: back.imageWithAlpha(alpha: 0.15))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jogar(_ sender: UIButton) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

extension UIImage {
    
    func imageWithAlpha(alpha: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: alpha)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
