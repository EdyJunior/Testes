//
//  TestesTests.swift
//  TestesTests
//
//  Created by Edvaldo Junior on 18/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import XCTest
@testable import Testes

class TestesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testeSorteio(){
        let valor = Jogo.shared.valorDado
        Jogo.shared.sorteio()
        XCTAssertNotEqual(valor, Jogo.shared.valorDado, "O valor sorteado deveria ter mudado")
    }
    
//    func mudarImagem(nome: String, naView view: UIImageView){
//        
//        self.imagemDado = UIImage(named: nome)
//        view.image = self.imagemDado
//        
//    }
    
    func testMudaImagem(){
    
        let imageView = UIImageView()
        imageView.image = UIImage(named: "0")
        Jogo.shared.mudarImagem(nome: "\(Jogo.shared.valorDado)", naView: imageView)
        XCTAssertNotEqual(UIImage(named: "0"), imageView.image, "Algo esta errado, a imagem não mudou" )
    }
    
    func testVerificaJogadaValida(){
        
        let oneText_1 = "1"
        let oneText_2 = "2"
        let twoText_1 = "3"
        let twoText_2 = "4"
        
        XCTAssertTrue(Jogo.shared.verificaJogadaValida(tf_1player1: oneText_1, tf_2player1: oneText_2, tf_1player2: twoText_1, tf_2player2: twoText_2))
        
    }
    
    func testVerificaPreenchimento(){
        
        let oneText_1 = "1"
        let oneText_2 = "2"
        let twoText_1 = "3"
        let twoText_2 = "4"
        
        XCTAssertTrue(Jogo.shared.verificaPreenchimento(tf_1player1: oneText_1, tf_2player1: oneText_2, tf_1player2: twoText_1, tf_2player2: twoText_2))
    }
    
    func testChecaVencedor() {
        
        let oneText_1 = "1"
        let oneText_2 = "2"
        let twoText_1 = "3"
        let twoText_2 = "4"
        
        Jogo.shared.valorDado = 1
        
        XCTAssertEqual(Jogo.shared.checaVencedor(tf_1player1: oneText_1, tf_2player1: oneText_2, tf_1player2: twoText_1, tf_2player2: twoText_2), 1)
    }
    
    func testMostraVencedor() {
        
        XCTAssertEqual(Jogo.shared.mostraVencedor(vencedor: 0), "Empate!")
    }
}
