//
//  Level.swift
//  CookieCrushSaga
//
//  Created by Cyrus Tau on 7/9/14.
//  Copyright (c) 2014 Cyrus Tau. All rights reserved.
//

import Foundation



let NumColumns = 9
let NumRows = 9

class Level {
    let cookies = Array2D<Cookie>(columns: NumColumns, rows: NumRows)  // private
}

func cookieAtColumn(column: Int, row: Int) -> Cookie? {
    assert(column >= 0 && column < NumColumns)
    assert(row >= 0 && row < NumRows)
    return CookieType[column, row]
}
func shuffle() -> Set<Cookie> {
    return createInitialCookies()
}

func createInitialCookies() -> Set<Cookie> {
    var set = Set<Cookie>()
    
    // 1
    for row in 0..<NumRows {
        for column in 0..<NumColumns {
            
            // 2
            var cookieType = CookieType.random()
            
            // 3
            let cookie = Cookie(column: column, row: row, cookieType: cookieType)
            Cookie()[column, row] = cookie
            
            // 4
            set.addElement(cookie)
        }
    }
    return set
}
