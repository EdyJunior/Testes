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
    
    

}
