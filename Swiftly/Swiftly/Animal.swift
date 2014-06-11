class Animal: MakeSoundProtocol, MoveProtocol {
    
    let soundProtocol: MakeSoundProtocol
    let moveProtocol: MoveProtocol
    
    init(soundProtocol: MakeSoundProtocol, moveProtocol: MoveProtocol) {
        self.soundProtocol = soundProtocol
        self.moveProtocol = moveProtocol
    }
    
    func makeSound() -> String {
        let sound = soundProtocol.makeSound()
        println(sound)
        return sound
    }
    
    func move() -> String {
        let move = moveProtocol.move()
        println(move)
        return move
    }
}