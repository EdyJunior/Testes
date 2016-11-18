//
//  Jogo.swift
//  Testes
//
//  Created by Daniel Dias on 18/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit

class Jogo: NSObject {
    
    var valorDado: Int?
    var imagemDado: UIImage?
    
    override init() {
        self.valorDado = 1
        self.imagemDado = UIImage(named: "\(self.valorDado)")
    }
    
    func sorteio() -> Int{
        
        let valor = arc4random_uniform(6)+1
        
        return Int(valor)
    
    }
    
    func changeImage(name: String, inView view: UIImageView){
    
        self.imagemDado = UIImage(named: name)
        view.image = self.imagemDado
        
    }
    
    func verificaPreenchimento(tf_1player1: String, tf_2player1: String, tf_1player2: String, tf_2player2: String) -> Bool{
        
        var preenchimentoDeTodasAsApostas = true
        
        if (tf_1player1.isEmpty) {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_2player1.isEmpty) {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_1player2.isEmpty) {
            preenchimentoDeTodasAsApostas = false
        }
        if (tf_2player2.isEmpty) {
            preenchimentoDeTodasAsApostas = false
        }
        
        print(preenchimentoDeTodasAsApostas)
        return preenchimentoDeTodasAsApostas
    }
    
    func verificaJogadaValida(tf_1player1: String, tf_2player1: String, tf_1player2: String, tf_2player2: String) -> Bool{
        
        var jogadaValida = true
        
        if ( (Int(tf_1player1)! < 1) || (Int(tf_1player1)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_2player1)! < 1) || (Int(tf_2player1)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_1player2)! < 1) || (Int(tf_1player2)! > 6)) {
            
            jogadaValida = false
        }
        if ( (Int(tf_2player2)! < 1) || (Int(tf_2player2)! > 6)) {
            
            jogadaValida = false
        }
        
        print(jogadaValida)
        return jogadaValida
    }
}
