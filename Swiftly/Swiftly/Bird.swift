class Bird: Animal {
    init() {
        super.init(soundProtocol: Chirp(), moveProtocol: Fly())
    }
}