//
//  Tests.swift
//  CompileTimeTests
//
//  Created by Kapil Rathore on 26/09/22.
//

import Foundation

class CompileTimeTests {
    struct User {
        var email: String?
        var displayName: String?
        var userID: String?
        var isAgent: Bool?
        var accountType: String?
        var newProperty: [SomeProperty]?
        
        struct SomeProperty {
            var id: Int?
        }
    }
    
    private var household: Household?
    private var user: User?
    
    private func typeInference1() {
        printProperties([
            "product": "identity",
            "email": user?.email ?? "",
            "name": user?.displayName ?? "",
            "user_id": user?.userID ?? "",
            "account_type": user?.isAgent == true ? "Agent" : "Consumer",
            "category": user?.accountType ?? "",
        ])
    }
    
    private func typeInference2() {
        let props: [String: Any] = [
            "product": "identity",
            "email": user?.email ?? "",
            "name": user?.displayName ?? "",
            "user_id": user?.userID ?? "",
            "account_type": user?.isAgent == true ? "Agent" : "Consumer",
            "category": user?.accountType ?? "",
        ]
        printProperties(props)
    }
    
    private func typeInference3() {
        let props: [String: Any] = [
            "product": "identity",
            "email": user?.email as Any,
            "name": user?.displayName as Any,
            "user_id": user?.userID as Any,
            "account_type": user?.isAgent == true ? "Agent" : "Consumer",
            "category": user?.accountType as Any,
        ]
        printProperties(props)
    }
    
    private func printProperties(_ properties: [String: Any]) {
        print(properties)
    }
}

extension CompileTimeTests {
    var testComputedProperty1: [String] {
        let mobileNumbers = household?.contacts?
            .compactMap { $0.contact?.phoneNumbers }
            .flatMap { $0 }
            .filter { $0.label == "Mobile" }
            .compactMap { $0.number }
            .uniquified
        
        let phoneNumbers = household?.contacts?
            .compactMap { $0.contact?.phoneNumbers }
            .compactMap { $0.first }
            .compactMap { $0.number }
            .uniquified
        
        if mobileNumbers?.isEmpty == true {
            return phoneNumbers ?? []
        } else {
            return mobileNumbers ?? []
        }
    }
    
    var testComputedProperty2: [String] {
        var mobileNumbers: [String] = []
        let phoneNumbers: [String] = household?.contacts?.first?.contact?.phoneNumbers?.compactMap({ $0.number }) ?? []
        
        household?.contacts?.forEach({ linkedContact in
            if let numbers = linkedContact.contact?.phoneNumbers?.filter({ $0.label == "Mobile" }).compactMap({ $0.number }) {
                mobileNumbers.append(contentsOf: numbers)
            }
        })
        
        return mobileNumbers.isEmpty ? phoneNumbers.uniquified : mobileNumbers.uniquified
    }
    
    var testComputedProperty3: [String] {
        let allPhoneNumbers: [ContactPhoneNumber] = (household?.contacts ?? []).flatMap { $0.contact?.phoneNumbers ?? [] }
        let mobileNumbers: [String] = allPhoneNumbers.filter { $0.label == "Mobile" }.compactMap { $0.number }
        let uniqueMobileNumbers: [String] = mobileNumbers.uniquified
        
        if uniqueMobileNumbers.isEmpty {
            let phoneNumbers: [String] = household?.contacts?.first?.contact?.phoneNumbers?.compactMap({ $0.number }) ?? []
            return phoneNumbers
        } else {
            return uniqueMobileNumbers
        }
    }
}

public extension Array where Element: Equatable {
    var uniquified: [Element] {
        var uniqueArray: [Element] = []
        forEach { element in
            if !uniqueArray.contains(element) {
                uniqueArray.append(element)
            }
        }
        return uniqueArray
    }
}

struct Household: Equatable {
    var contacts: [LinkedContact]?
}

struct LinkedContact: Equatable {
    var contact: Contact?
}

struct Contact: Equatable {
    var id: Int?
    var phoneNumbers: [ContactPhoneNumber]?
}

struct ContactPhoneNumber: Equatable {
    var id: Int?
    var label: String?
    var number: String?
}
