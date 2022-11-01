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
        var isParent: Bool?
        var accountType: String?
        var newProperty: [SomeProperty]?
        var address: String?
        var phoneNumber: String?
        var parentId: String?
        
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
            "is_parent": user?.isParent ?? false,
            "category": user?.accountType ?? "",
            "address": user?.address ?? "",
            "phoneNumber": user?.phoneNumber ?? "",
            "parentId": user?.parentId ?? "",
            "product": "identity",
            "email": user?.email ?? "",
            "name": user?.displayName ?? "",
            "user_id": user?.userID ?? "",
            "is_parent": user?.isParent ?? false,
            "category": user?.accountType ?? "",
            "address": user?.address ?? "",
            "phoneNumber": user?.phoneNumber ?? "",
            "parentId": user?.parentId ?? "",
        ])
    }
    
    private func typeInference2() {
        let props: [String: Any] = [
            "product": "identity",
            "email": user?.email as Any,
            "name": user?.displayName as Any,
            "user_id": user?.userID as Any,
            "account_type": user?.isParent as Any,
            "category": user?.accountType as Any,
            "address": user?.address as Any,
            "phoneNumber": user?.phoneNumber as Any,
            "parentId": user?.parentId as Any,
            "product": "identity",
            "email": user?.email as Any,
            "name": user?.displayName as Any,
            "user_id": user?.userID as Any,
            "account_type": user?.isParent as Any,
            "category": user?.accountType as Any,
            "address": user?.address as Any,
            "phoneNumber": user?.phoneNumber as Any,
            "parentId": user?.parentId as Any,
        ]
        printProperties(props)
    }
    
    private func printProperties(_ properties: [String: Any]) {
        print(properties)
    }
}

extension CompileTimeTests {
    var testComputedProperty1: [String] {
        return household?.contacts?
            .compactMap { $0.contact?.phoneNumbers }
            .flatMap { $0 }
            .filter { $0.label == "Mobile" }
            .compactMap { $0.number }
            .uniquified ?? []
    }
    
    var testComputedProperty2: [String] {
        let allPhoneNumbers: [ContactPhoneNumber] = (household?.contacts ?? []).flatMap { $0.contact?.phoneNumbers ?? [] }
        let mobileNumbers: [String] = allPhoneNumbers.filter { $0.label == "Mobile" }.compactMap { $0.number }
        return mobileNumbers.uniquified
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
