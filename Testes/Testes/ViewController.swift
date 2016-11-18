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
    
    let jogo = Jogo()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let back = #imageLiteral(resourceName: "back")
        
        self.view.backgroundColor = UIColor(patternImage: back.imageWithAlpha(alpha: 0.15))
        
        let val = self.jogo.sorteio()
        print(val)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func jogar(_ sender: UIButton) {
        
        if jogo.verificaPreenchimento(tf_1player1: self.tf_1player1.text!, tf_2player1: self.tf_2player1.text!, tf_1player2: self.tf_1player2.text!, tf_2player2: self.tf_2player2.text!) {
            
            if jogo.verificaJogadaValida(tf_1player1: self.tf_1player1.text!, tf_2player1: self.tf_2player1.text!, tf_1player2: self.tf_1player2.text!, tf_2player2: self.tf_2player2.text!) {
                
            }
        }
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
