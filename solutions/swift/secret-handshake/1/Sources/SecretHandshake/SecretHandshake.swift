func commands(number: Int) -> [String] {
    var actions: [String] = []

    if number % 2 == 1 {
        actions.append("wink")
    }
    if number / 2 % 2 == 1 {
        actions.append("double blink")
    }
    if number / 4 % 2 == 1 {
        actions.append("close your eyes")
    }
    if number / 8 % 2 == 1 {
        actions.append("jump")
    }

    if number >= 16 {
        actions.reverse()
    }

    return actions
}