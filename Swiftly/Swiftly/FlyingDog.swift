class FlyingDog: Animal {
    init() {
        super.init(soundProtocol: Bark(), moveProtocol: Fly())
    }
}