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
    
    let jogo = Jogo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let val = self.jogo.sorteio()
        print(val)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jogar(_ sender: UIButton) {
    }

}

