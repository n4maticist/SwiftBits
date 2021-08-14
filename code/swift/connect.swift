import Foundation
import FoundationNetworking

let myURLString = "http://hapi:11000/fhir"
let myResourceString = "metadata"

func load(url: String, resource: String) -> String {
    var response = "Unknown Error"
    if let fhirUrl = URL(string: "\(url)/\(resource)") {
        do {
            response = try String(contentsOf: fhirUrl)
        } catch {
            response = "Unavailable: \(fhirUrl)"
        }
    } else {
        response = "Bad URL"
    }
    
    return response
}

let res = load(url: myURLString, resource: myResourceString)
print(res)
