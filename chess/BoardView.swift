import UIKit

class BoardView: UIView {
    let cellside101: CGFloat = 0
    
    var originX: CGFloat = 0.0
    var originY: CGFloat = 0.0
    var cellSide: CGFloat = 0.0
    
    override func draw(_ rect: CGRect) {
        print(bounds.width)
        cellSide = (bounds.width / 8 )
        drawBoard()
        drawPieces()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let fingerLocation = touch.location(in: self)
        let row : Int = Int(fingerLocation.y / cellSide)
        let col : Int = Int(fingerLocation.x / cellSide)
        print("from: (\(col), \(row))")
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let fingerLocation = touch.location(in: self)
        let row : Int = Int(fingerLocation.y / cellSide)
        let col : Int = Int(fingerLocation.x / cellSide)
        print("to: (\(col), \(row))")
    }
    
    /*
 
     from: (0, 0)
     to: (4, 5)
     
    */
    
    func drawPieces()  {
        
        
        for p in 0..<2 {
            drawPiece(col: p * 5 + 1, row: 0, imageName: "knight_chess_b")
            drawPiece(col: p * 5 + 1, row: 7, imageName: "knight_chess_w")
            drawPiece(col: p * 7, row: 0, imageName: "rook_chess_b")
            drawPiece(col: p * 7, row: 7, imageName: "rook_chess_w")
            drawPiece(col: p * 3 + 2, row: 7 , imageName: "bishop_chess_w")
            drawPiece(col: p * 3 + 2, row: 0 , imageName: "bishop_chess_b")
        }

        drawPiece(col: 3, row: 0, imageName: "king_chess_b")
        drawPiece(col: 3, row: 7, imageName: "king_chess_w")
        
        drawPiece(col: 4, row: 0, imageName: "queen_chess_b")
        drawPiece(col: 4, row: 7, imageName: "queen_chess_w")
        
        for y in 0...7 {
            drawPiece(col: 0 + y, row: 6, imageName: "pawn_chess_w")
            drawPiece(col: 0 + y, row: 1, imageName: "pawn_chess_b")
        }
    }
    
    func drawPiece(col:Int,  row:Int, imageName: String)  {
        let image = UIImage(named: imageName)
        image?.draw(in: CGRect(x: originX + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
    }
    
    func drawBoard()  {
        for d in 0..<4 {
            drawSquare(locationX: originX + cellSide , locationY: originY + cellSide * 2 * CGFloat(d), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 3 , locationY: originY + cellSide * 2 * CGFloat(d), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 5 , locationY: originY + cellSide * 2 * CGFloat(d), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 7 , locationY: originY + cellSide * 2 * CGFloat(d), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        
        for p in 0..<4 {
            drawSquare(locationX: originX   , locationY: originY + cellSide * CGFloat(p * 2 + 1), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 2 , locationY: originY + cellSide * CGFloat(p * 2 + 1), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 4 , locationY: originY + cellSide * CGFloat(p * 2 + 1), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawSquare(locationX: originX +  cellSide * 6 , locationY: originY + cellSide * CGFloat(p * 2 + 1), colourLiteral: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        
        for n in 0..<4 {
            drawSquare(locationX: originX + cellSide * CGFloat(n * 2 + 1), locationY: originY + cellSide * 1, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * CGFloat(n * 2 + 1), locationY: originY + cellSide * 3, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * CGFloat(n * 2 + 1), locationY: originY + cellSide * 5, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * CGFloat(n * 2 + 1), locationY: originY + cellSide * 7, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        }
        
        for q in 0..<4 {
            drawSquare(locationX: originX + cellSide * 2 * CGFloat(q) , locationY: originY , colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * 2 * CGFloat(q) , locationY: originY + cellSide * 2, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * 2 * CGFloat(q), locationY: originY + cellSide * 4, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
            drawSquare(locationX: originX + cellSide * 2 * CGFloat(q) , locationY: originY + cellSide * 6, colourLiteral: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        }
    }
    
    func drawSquare(locationX: CGFloat, locationY : CGFloat, colourLiteral: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: locationX, y: locationY))
        pencil.addLine(to: CGPoint(x: locationX + cellSide, y: locationY))
        pencil.addLine(to: CGPoint(x: locationX + cellSide , y: locationY + cellSide))
        pencil.addLine(to: CGPoint(x: locationX , y: locationY + cellSide))
        pencil.close()
        
        colourLiteral.setFill()
        pencil.fill()
        pencil.stroke()
    }
    
}

