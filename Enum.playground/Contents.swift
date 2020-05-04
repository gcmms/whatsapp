import UIKit

var str = "Hello, playground"


enum EstadoLampada {
    case ligada
    case desligada
}

var lampada: EstadoLampada = .ligada

if lampada == .ligada {
    print("Esta ligada")
}
