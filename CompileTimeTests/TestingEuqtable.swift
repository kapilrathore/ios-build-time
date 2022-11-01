//
//  TestingEuqtable.swift
//  CompileTimeTests
//
//  Created by Kapil Rathore on 14/10/22.
//

import Foundation

struct TestingEuqtable {
    let property1: NewTest?
    let property2: NewTest?
    let property3: NewTest?
    let property4: NewTest?
    let property5: NewTest?
    let property6: NewTest?
    let property7: NewTest?
    let property8: NewTest?
    let property9: NewTest?
    let property10: NewTest?
    let property11: NewTest?
    let property12: NewTest?
    let property13: NewTest?
    let property14: NewTest?
    let property15: NewTest?
    let property16: NewTest?
    let property17: NewTest?
    let property18: NewTest?
    let property19: NewTest?
    let property20: NewTest?
    let property21: NewTest?
    let property22: NewTest?
    let property23: NewTest?
    let property24: NewTest?
    let property25: NewTest?
    let property26: NewTest?
    let property27: NewTest?
    let property28: NewTest?
    let property29: NewTest?
    let property30: NewTest?
    let property31: NewTest?
    let property32: NewTest?
    let property33: NewTest?
    let property34: NewTest?
    let property35: NewTest?
    let property36: NewTest?
    let property37: NewTest?
    let property38: NewTest?
    let property39: NewTest?
    let property40: NewTest?
}

extension TestingEuqtable: Equatable {
    static func == (lhs: TestingEuqtable, rhs: TestingEuqtable) -> Bool {
        return lhs.property1 == rhs.property1
        && lhs.property2 == rhs.property2
        && lhs.property3 == rhs.property3
        && lhs.property4 == rhs.property4
        && lhs.property5 == rhs.property5
        && lhs.property6 == rhs.property6
        && lhs.property7 == rhs.property7
        && lhs.property8 == rhs.property8
        && lhs.property9 == rhs.property9
        && lhs.property10 == rhs.property10
        && lhs.property11 == rhs.property11
        && lhs.property12 == rhs.property12
        && lhs.property13 == rhs.property13
        && lhs.property14 == rhs.property14
        && lhs.property15 == rhs.property15
        && lhs.property16 == rhs.property16
        && lhs.property17 == rhs.property17
        && lhs.property18 == rhs.property18
        && lhs.property19 == rhs.property19
        && lhs.property20 == rhs.property20
        && lhs.property21 == rhs.property21
        && lhs.property22 == rhs.property22
        && lhs.property23 == rhs.property23
        && lhs.property24 == rhs.property24
        && lhs.property25 == rhs.property25
        && lhs.property26 == rhs.property26
        && lhs.property27 == rhs.property27
        && lhs.property28 == rhs.property28
        && lhs.property29 == rhs.property29
        && lhs.property30 == rhs.property30
        && lhs.property31 == rhs.property31
        && lhs.property32 == rhs.property32
        && lhs.property33 == rhs.property33
        && lhs.property34 == rhs.property34
        && lhs.property35 == rhs.property35
        && lhs.property36 == rhs.property36
        && lhs.property37 == rhs.property37
        && lhs.property38 == rhs.property38
        && lhs.property39 == rhs.property39
        && lhs.property40 == rhs.property40
    }
}

struct NewTest: Equatable {}

struct TestingEuqtable1 {
    let property1: NewTest?
    let property2: NewTest?
    let property3: NewTest?
    let property4: NewTest?
    let property5: NewTest?
    let property6: NewTest?
    let property7: NewTest?
    let property8: NewTest?
    let property9: NewTest?
    let property10: NewTest?
    let property11: NewTest?
    let property12: NewTest?
    let property13: NewTest?
    let property14: NewTest?
    let property15: NewTest?
    let property16: NewTest?
    let property17: NewTest?
    let property18: NewTest?
    let property19: NewTest?
    let property20: NewTest?
    let property21: NewTest?
    let property22: NewTest?
    let property23: NewTest?
    let property24: NewTest?
    let property25: NewTest?
    let property26: NewTest?
    let property27: NewTest?
    let property28: NewTest?
    let property29: NewTest?
    let property30: NewTest?
    let property31: NewTest?
    let property32: NewTest?
    let property33: NewTest?
    let property34: NewTest?
    let property35: NewTest?
    let property36: NewTest?
    let property37: NewTest?
    let property38: NewTest?
    let property39: NewTest?
    let property40: NewTest?
}

extension TestingEuqtable1: Equatable {
    static func == (lhs: TestingEuqtable1, rhs: TestingEuqtable1) -> Bool {
        guard lhs.property1 == rhs.property1 else { return false }
        guard lhs.property2 == rhs.property2 else { return false }
        guard lhs.property3 == rhs.property3 else { return false }
        guard lhs.property4 == rhs.property4 else { return false }
        guard lhs.property5 == rhs.property5 else { return false }
        guard lhs.property6 == rhs.property6 else { return false }
        guard lhs.property7 == rhs.property7 else { return false }
        guard lhs.property8 == rhs.property8 else { return false }
        guard lhs.property9 == rhs.property9 else { return false }
        guard lhs.property10 == rhs.property10 else { return false }
        guard lhs.property11 == rhs.property11 else { return false }
        guard lhs.property12 == rhs.property12 else { return false }
        guard lhs.property13 == rhs.property13 else { return false }
        guard lhs.property14 == rhs.property14 else { return false }
        guard lhs.property15 == rhs.property15 else { return false }
        guard lhs.property16 == rhs.property16 else { return false }
        guard lhs.property17 == rhs.property17 else { return false }
        guard lhs.property18 == rhs.property18 else { return false }
        guard lhs.property19 == rhs.property19 else { return false }
        guard lhs.property20 == rhs.property20 else { return false }
        guard lhs.property21 == rhs.property21 else { return false }
        guard lhs.property22 == rhs.property22 else { return false }
        guard lhs.property23 == rhs.property23 else { return false }
        guard lhs.property24 == rhs.property24 else { return false }
        guard lhs.property25 == rhs.property25 else { return false }
        guard lhs.property26 == rhs.property26 else { return false }
        guard lhs.property27 == rhs.property27 else { return false }
        guard lhs.property28 == rhs.property28 else { return false }
        guard lhs.property29 == rhs.property29 else { return false }
        guard lhs.property30 == rhs.property30 else { return false }
        guard lhs.property31 == rhs.property31 else { return false }
        guard lhs.property32 == rhs.property32 else { return false }
        guard lhs.property33 == rhs.property33 else { return false }
        guard lhs.property34 == rhs.property34 else { return false }
        guard lhs.property35 == rhs.property35 else { return false }
        guard lhs.property36 == rhs.property36 else { return false }
        guard lhs.property37 == rhs.property37 else { return false }
        guard lhs.property38 == rhs.property38 else { return false }
        guard lhs.property39 == rhs.property39 else { return false }
        guard lhs.property40 == rhs.property40 else { return false }
        return true
    }
}
