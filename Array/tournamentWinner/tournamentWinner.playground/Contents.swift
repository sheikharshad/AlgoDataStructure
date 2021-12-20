import UIKit

/*
 #imageLiteral(resourceName: "Screen Shot 2021-12-21 at 12.19.07 AM.png")
 */

/*input - {
"competitions": [
  ["HTML", "C#"],
  ["C#", "Python"],
  ["Python", "HTML"]
],
"results": [0, 0, 1]
}
*/
//Output - Python


class Program {
  let HOME_TEAM_WON = 1

  func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {

      var dict = [String: Int]()
      var teamIndex = 0
      var resultIndex = 0
      var maxScore = 0
      var teamWon = ""
      
      while teamIndex < competitions.count, resultIndex < results.count {
        
          if results[resultIndex] == 0 {
              var x = dict[competitions[teamIndex][1]] ?? 0
              x += 3
              dict[competitions[teamIndex][1]] = x
              if x > maxScore {
                  maxScore = x
                  teamWon = competitions[teamIndex][1]
              }
          } else {
              var y = dict[competitions[teamIndex][0]] ?? 0
              y += 3
              dict[competitions[teamIndex][0]] = y
              
              if y > maxScore {
                  maxScore = y
                  teamWon = competitions[teamIndex][0]
              }
          }
          
          teamIndex += 1
          resultIndex += 1
      }
      print(dict)
    return teamWon
  }
}

var obj = Program()
//let com = [
//    ["HTML", "C#"],
//    ["C#", "Python"],
//    ["Python", "HTML"]
//  ]
//let results =  [0, 0, 1]

let com = [
    ["HTML", "Java"],
    ["Java", "Python"],
    ["Python", "HTML"],
    ["C#", "Python"],
    ["Java", "C#"],
    ["C#", "HTML"],
    ["SQL", "C#"],
    ["HTML", "SQL"],
    ["SQL", "Python"],
    ["SQL", "Java"]
  ]
let results =   [0, 0, 0, 0, 0, 0, 1, 0, 1, 1]


print(obj.tournamentWinner(com, results))

