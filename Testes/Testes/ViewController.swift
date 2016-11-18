//
//  ViewController.swift
//  Testes
//
//  Created by Edvaldo Junior on 18/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jogar(_ sender: UIButton) {
        
        if verificaPreenchimento() {
            
            if verificaJogadaValida() {
                
                
            }
            
        }
        
        
    }

    
    func verificaPreenchimento() -> Bool{
        
        var preenchimentoDeTodasAsApostas = true
        
        if (tf_1player1.text?.isEmpty)! {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_2player1.text?.isEmpty)! {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_1player2.text?.isEmpty)! {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_2player2.text?.isEmpty)! {
            preenchimentoDeTodasAsApostas = false
        }
        
        print(preenchimentoDeTodasAsApostas)
        return preenchimentoDeTodasAsApostas
    }
    
    func verificaJogadaValida() -> Bool{
        
        var jogadaValida = true
        
        if ( (Int(tf_1player1.text!)! < 1) || (Int(tf_1player1.text!)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_2player1.text!)! < 1) || (Int(tf_2player1.text!)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_1player2.text!)! < 1) || (Int(tf_1player2.text!)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_2player2.text!)! < 1) || (Int(tf_2player2.text!)! > 6)) {
            
            jogadaValida = false
        }
    
        print(jogadaValida)
        return jogadaValida
        
    }
}

