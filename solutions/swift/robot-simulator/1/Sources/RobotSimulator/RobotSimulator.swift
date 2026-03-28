import Foundation

enum Bearing {
    case north, east, south, west
}

struct RobotState {
    var x: Int
    var y: Int
    var bearing: Bearing
}

class SimulatedRobot {
    var x: Int
    var y: Int
    var bearing: Bearing

    init(x: Int, y: Int, bearing: Bearing) {
        self.x = x
        self.y = y
        self.bearing = bearing
    }

    var state: RobotState {
        RobotState(x: x, y: y, bearing: bearing)
    }

    func move(commands: String) {
        for cmd in commands {
            switch cmd {
            case "R":
                turnRight()
            case "L":
                turnLeft()
            case "A":
                advance()
            default:
                break
            }
        }
    }

    func turnRight() {
        switch bearing {
        case .north: bearing = .east
        case .east:  bearing = .south
        case .south: bearing = .west
        case .west:  bearing = .north
        }
    }

    func turnLeft() {
        switch bearing {
        case .north: bearing = .west
        case .west:  bearing = .south
        case .south: bearing = .east
        case .east:  bearing = .north
        }
    }

    func advance() {
        switch bearing {
        case .north: y += 1
        case .south: y -= 1
        case .east:  x += 1
        case .west:  x -= 1
        }
    }
}
