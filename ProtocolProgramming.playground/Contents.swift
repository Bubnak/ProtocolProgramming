

protocol ProtocolNickName {
    var name: String { get set }
    func appendNameString() -> String
}


extension ProtocolNickName {
    func appendNameString() -> String
    {
        return "My name is " + name
    }
}



protocol ProtocolAge {
    var age: String { get set }
    func appendAgeString() -> String
}


extension ProtocolAge {
    func appendAgeString() -> String
    {
        return "I am " + age + " years old"
    }
}



//________________________________________________________________________________________________


struct ExampleStruct1: ProtocolNickName {
    var name: String
}

let order1 = ExampleStruct1(name: "Krishna")
print(order1.appendNameString())

//_______________________________________________________________________________________________






// protocol composition

protocol ProtocolDetails : ProtocolNickName ,ProtocolAge{
    
}

struct ExampleStruct: ProtocolDetails{
    var age: String
    
    var name: String
}
let order = ExampleStruct(age: "36", name: "Krishna")
print(order.appendAgeString())
print(order.appendNameString())




//__________________________________________________________________________



// protocol inheritance
protocol ProtocolColour {
    func getColors(color: String)
}

protocol ProtocolBike: ProtocolColour {
    func getChain(product: String)
}

protocol ProtcolCar: ProtocolColour {
    func getSunGlass( searchTerm: String)
}

struct CreateBike: ProtocolBike {
    func getColors(color: String) {
        //TODO: call page viewed.
    }

    func getChain(product: String) {
        //TODO: call add to cart.
    }
}


