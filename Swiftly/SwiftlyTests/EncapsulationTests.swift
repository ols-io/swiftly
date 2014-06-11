import XCTest

class EncapsulationTests: XCTestCase {
    
    
    func testDogBarksAndWalks() {
        let dog = Dog()
        let sound = dog.makeSound()
        let move = dog.move()
        
        XCTAssertEqual("Bark", sound, "Dogs should bark")
        XCTAssertEqual("Walk", move, "Dogs should walk")
    }
    
    func testBirdChirpsAndFlys() {
        let bird = Bird()
        let sound = bird.makeSound()
        let move = bird.move()
        
        XCTAssertEqual("Chirp", sound, "Birds should chirp")
        XCTAssertEqual("Fly", move, "Birds should fly")
    }
    
    func testFlyingDogBarksAndFlys() {
        let flyingDog = FlyingDog()
        let sound = flyingDog.makeSound()
        let move = flyingDog.move()
        
        XCTAssertEqual("Bark", sound, "FlyingDogs should bark")
        XCTAssertEqual("Fly", move, "FlyingDogs should fly")
    }
}
