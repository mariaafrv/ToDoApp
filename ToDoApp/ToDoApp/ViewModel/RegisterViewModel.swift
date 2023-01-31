import Foundation

class RegisterViewModel {
    
    func createAccount(firstName: String, lastName: String, email: String, password: String, completion: @escaping (User) -> ()) {
        
        let user = User(
            firstName: firstName,
            secondName: lastName,
            email: email,
            password: password,
            profileImage: nil)
        completion(user)
    }
}
