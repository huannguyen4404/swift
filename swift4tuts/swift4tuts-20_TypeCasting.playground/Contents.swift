import UIKit

class Media {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Song: Media {
    var artist: String
    init(name:String, artist:String) {
        self.artist = artist
        super.init(name: name)
    }
}
class Movie: Media {
    var director:String
    init(name:String, director:String) {
        self.director = director
        super.init(name: name)
    }
}
var mediaLists: [Media] = [
    Movie(name: "First film", director: "Henry"),
    Movie(name: "Second film", director: "Huan"),
    Movie(name: "Third film", director: "Nguyen"),
    Song(name: "Let it be", artist: "The beatles"),
    Song(name: "Only love", artist: "Trademark"),
]

var totalSongs = 0
var totalMovies = 0
for media in mediaLists {
    if media is Song {
        totalSongs += 1
    } else if media is Movie {
        totalMovies += 1
    }
}
print("Total Songs:\(totalSongs), total movies:\(totalMovies)")

for media in mediaLists {
    if let movie = media as? Movie {
        //DownCasting
        print("Movie: \(movie.name), director: \(movie.director)")
    } else if let song = media as? Song {
        print("Song: \(song.name), artist: \(song.artist)")
    }
}

// Type Casting for Any and AnyObject
var things = [Any]()
things.append(100)
things.append(200.0)
things.append(Double.pi)
//things.append(M_PI) // Deprecated
things.append("4Fun")
things.append((1.0, 2.5))
things.append(Song(name: "My Love", artist: "Westlife"))
things.append({ (name:String) -> String in "Hello, \(name)" }) // closure

for thing in things {
    switch thing {
    case let aInt as Int:
        print("An int value: \(aInt)")
    case let aDouble as Double where aDouble > 0:
        print("A Double value: \(aDouble), positive")
    case let aStr as String:
        print("A String value: \(aStr)")
    case let (x, y) as (Double, Double):
        print("This is a tuple with x=\(x), y=\(y)")
    case let aSong as Song:
        print("A Song, name:\(aSong.name), artist:\(aSong.artist)")
    case let stringInClosure as (String) -> String:
        print("StringInClosure \(stringInClosure("Henry"))")
    default:
        print("Sth else")
    }
}
