class Dog: Animal {
    init() {
        super.init(soundProtocol: Bark(), moveProtocol: Walk())
    }
}