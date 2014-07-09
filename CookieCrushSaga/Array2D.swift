//
//  Array2D.swift
//  CookieCrushSaga
//
//  Created by Cyrus Tau on 7/9/14.
//  Copyright (c) 2014 Cyrus Tau. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    var array: Array<T?>   // private
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows*columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[row*columns + column]
        }
        set {
            array[row*columns + column] = newValue
        }
    }
}
