//: Velocimetro


import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
        //print("\(velocidad.rawValue)  , \(velocidad)")
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        switch velocidad{
            case .Apagado:
                velocidad = Velocidades.VelocidadBaja
            
            case .VelocidadBaja:
                velocidad = Velocidades.VelocidadMedia
            
            case .VelocidadMedia:
                velocidad = Velocidades.VelocidadAlta

            case .VelocidadAlta:
                velocidad = Velocidades.VelocidadMedia

        }
        
        return (velocidad.rawValue, String(velocidad))
    }
    
    func dameDeVelocidad()-> (actual:Int, velocidadEnCadena:String){
        return (velocidad.rawValue, String(velocidad))

    }
    
}

var a = Auto()
var v = a.dameDeVelocidad()
print("\(v)")
for var i=0; i < 20 ; i++
{
    v = a.cambioDeVelocidad()
    print("\(v)")
}






