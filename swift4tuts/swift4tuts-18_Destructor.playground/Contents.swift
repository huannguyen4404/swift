import UIKit

class Stock {
    static var coinsInStock = 20_000
    static func distribute(coins: Int) -> Int {
        let distributedCoins = min(coins, coinsInStock)
        coinsInStock = coinsInStock - distributedCoins
        return distributedCoins
    }
    static func receive(coins: Int) {
        coinsInStock += coins
    }
}

class GamePlayer {
    var existingCoins: Int
    init(coins: Int) {
        existingCoins = Stock.distribute(coins: coins)
    }
    func win(coins: Int) {
        existingCoins += Stock.distribute(coins: coins)
    }
    
    deinit {
        print("Deinit...")
        Stock.receive(coins: existingCoins)
    }
}

var player: GamePlayer? = GamePlayer(coins: 1200)
player?.existingCoins
player!.win(coins: 150)
Stock.coinsInStock
player = nil
Stock.coinsInStock
