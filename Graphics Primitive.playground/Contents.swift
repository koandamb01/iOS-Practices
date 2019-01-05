import UIKit

struct Point {
    var X: Double
    var Y: Double
}

struct Line {
    var Start: Point
    var End: Point
    
    func length() -> Double{
        let e = self.End.X - self.Start.X
        let s = self.End.Y - self.Start.Y
        return sqrt(s + e)
    }
}

struct Triangle {
    var Points: [Point]
    
    func area() -> Double {
        // line 1
        var line = Line(Start: Points[0], End: Points[1])
        let l1 = line.length()
        
        // line 2
        line.Start = Points[3]
        let l2 = line.length()
        
        // line 3
        line.End = Points[0]
        let l3 = line.length()
        
        var s = (l1 + l2 + l3) / 2
        return sqrt(s*(s - l1) * (s - l2) * (s - l3))
    }
}


