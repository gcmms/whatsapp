import UIKit
import Foundation

var str = "Hello, playground"


enum EstadoLampada {
    case ligado
    case desligado
    
    //Aqui vou criar uma variavel para comprar o estado, sei que aqui estou usando Bool, acho que a esta altura do artigo você ja entendeu que eu não tenho nada contra o Bool heheehe <3
    var estaLigada:Bool {
        self == .ligado
    }
    var estaDesligado: Bool {
        self == .desligado
    }
    
    //Agora vamos criar uma função que irá mudar o estado da nossa lampada, então só preciso chamar essa função e irá alterar o estado
    mutating func alteraEstado(){
        switch self {
        case .ligado:
            self = .desligado
        case .desligado:
            self = .ligado
        }
    }
    
    //E por fim, se você ainda precisar do resuldado Bool para algum motivo você pode fazer
    var valorAtual: Bool {
        switch self {
        case .ligado:
            return true
        case .desligado:
            return false
        }
    }
}

var lampada: EstadoLampada = .ligado

//Se ela esta ligada vamos desligar
lampada.alteraEstado()
// ou
lampada = .desligado

if lampada.estaLigada {
    print("Ligada ")
}

if lampada.estaDesligado {
    print("Desligada ")
}

