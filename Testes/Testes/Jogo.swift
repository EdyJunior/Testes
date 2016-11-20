//
//  Jogo.swift
//  Testes
//
//  Created by Daniel Dias on 18/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit

class Jogo: NSObject {

    var valorDado: Int = 1
    var imagemDado = UIImage(named: "1")
    static let shared = Jogo()

    func sorteio(){

        let valor = arc4random_uniform(6)+1

        self.valorDado = Int(valor)
    }
    
    func mudarImagem(nome: String, naView view: UIImageView){
        
        self.imagemDado = UIImage(named: nome)
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
    
    func checaVencedor(tf_1player1: String, tf_2player1: String, tf_1player2: String, tf_2player2: String) -> Int {
        
        var pri = 0
        var seg = 0
        
        if tf_1player1 == "\(valorDado)" {
            pri += 1
        }
        if tf_2player1 == "\(valorDado)" {
            pri += 1
        }
        if tf_1player2 == "\(valorDado)" {
            seg += 1
        }
        if tf_2player2 == "\(valorDado)" {
            seg += 1
        }
        print("valor = \(valorDado) tf1 = \(tf_1player1)")
        return pri > seg ? 1 : (pri < seg ? 2 : 0)
    }
    
    func mostraVencedor(vencedor: Int) -> String {
        
        if vencedor == 0 {
            return "Empate!"
        } else if vencedor == 1 {
            return "Seu Madruga venceu!"
        } else {
            return "Wolverine venceu!"
        }
    }
}
