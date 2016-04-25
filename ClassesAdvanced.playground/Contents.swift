//: Classes - advanced syntax. Properties, methods, initializers, and instances.

class Player{
    
    // properties
    
    var name : String
    var score : Int
    
    // methods
    
    func description() ->String{
        
        return "Player \(name) has a score of \(score)."
    }
    
    
    // default initializer
    
    init() {
        
        name = "PlayerDefaultName"
        score = 0
    }
    
    // initializer with parameters
    
    init(name: String, score: Int){
        
        self.name = name
        self.score = score
        
    }
    
    // deinitializer
    
    deinit{
        
        //cleanup code goes here
        
        
    }
}

var defaultPlayer = Player()

defaultPlayer.description()

var camillePlayer = Player(name: "Camille", score: 15000)
camillePlayer.description()
