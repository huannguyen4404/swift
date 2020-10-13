import UIKit

// Overflow operators
var maxInt32 = Int32.max
//maxInt32 = maxInt32 + 1 // Crashed
maxInt32 = maxInt32 &+ 1  // quay lai min


// Operator methods
struct Vector3D {
    var x = 0.0, y = 0.0, z = 0.0
}
extension Vector3D {
    static func + (v1: Vector3D, v2: Vector3D) -> Vector3D {
        return Vector3D(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)
    }
    
    // unary operator
    static prefix func - (vector: Vector3D) -> Vector3D {
        return Vector3D(x: -vector.x, y: -vector.y, z: -vector.z)
    }
    
    static func == (v1: Vector3D, v2: Vector3D) -> Bool {
        return (v1.x == v2.x) && (v1.y == v2.y) && (v1.z == v2.z)
    }
}

let vectorA = Vector3D(x: 1.0, y: 2.0, z: 3.0)
let vectorB = Vector3D(x: 4.0, y: 5.0, z: 6.0)
var sum = vectorA + vectorB

var vectorC = -vectorA

let vectorD = Vector3D(x: 1.0, y: 2.0, z: 3.0)
vectorA == vectorD
