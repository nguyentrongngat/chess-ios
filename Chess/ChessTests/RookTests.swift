//
//  RookTests.swift
//  ChessTests
//
//  Created by Zhijun Sheng on 2020-07-05.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import XCTest
@testable import GT_Chess

class RookTests: XCTestCase {

    func testRookRules() {
        var game = ChessEngine()
        game.pieces.insert(ChessPiece(col: 0, row: 7, imageName: "", isWhite: true, rank: .rook))
        print(game)
        /*
         + 0 1 2 3 4 5 6 7
         0 . . . . . . . .
         1 . . . . . . . .
         2 . . . . . . . .
         3 . . . . . . . .
         4 . . . . . . . .
         5 . . . . . . . .
         6 . x . . . . . .
         7 r . . . . . . .
         */
        XCTAssertFalse(game.canPieceMove(fromCol: 0, fromRow: 7, toCol: 1, toRow: 6, isWhite: true))
        
        /*
         + 0 1 2 3 4 5 6 7
         0 . . . . . . . .
         1 . . . . . . . .
         2 . . . . . . . .
         3 . . . . . . . .
         4 . . . . . . . .
         5 o . . . . . . .
         6 . . . . . . . .
         7 r . . . . . . .
         */
        XCTAssertTrue(game.canPieceMove(fromCol: 0, fromRow: 7, toCol: 0, toRow: 5, isWhite: true))
    }

}
