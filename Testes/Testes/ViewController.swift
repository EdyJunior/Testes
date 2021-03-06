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
    var numeroSorteado: Int?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let back = #imageLiteral(resourceName: "back")
        
        self.view.backgroundColor = UIColor(patternImage: back.imageWithAlpha(alpha: 0.15))
        
        self.Dado.image = UIImage(named: "1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func jogar(_ sender: UIButton) {
        
        if jogo.verificaPreenchimento(tf_1player1: self.tf_1player1.text!, tf_2player1: self.tf_2player1.text!, tf_1player2: self.tf_1player2.text!, tf_2player2: self.tf_2player2.text!) {
            
            if jogo.verificaJogadaValida(tf_1player1: self.tf_1player1.text!, tf_2player1: self.tf_2player1.text!, tf_1player2: self.tf_1player2.text!, tf_2player2: self.tf_2player2.text!) {
                
                self.view.endEditing(true)
                
                //------------------------------
                //------sorteia e exibe o dado--
                
                self.jogo.sorteio()
                self.numeroSorteado = self.jogo.valorDado
                print(self.numeroSorteado!)
                self.jogo.mudarImagem(nome: "\(self.numeroSorteado!)", naView: self.Dado)
                let vencedor = jogo.checaVencedor(tf_1player1: self.tf_1player1.text!, tf_2player1: self.tf_2player1.text!, tf_1player2: self.tf_1player2.text!, tf_2player2: self.tf_2player2.text!)
                self.resultadoLabel.textColor = .white
                self.resultadoLabel.text = self.jogo.mostraVencedor(vencedor: vencedor)
                //print(self.jogo.mostraVencedor(vencedor: vencedor))
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
