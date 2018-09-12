//: Playground - noun: a place where people can play

import UIKit

struct Note: Codable{
    let title: String
    let text: String
    let timestamp: Date
}


let note1 = Note(title: "Yesterday", text: "Yesterday for me, was the best day in my life!", timestamp: Date())

let note2 = Note(title: "Today", text: "I wish peace today!", timestamp: Date())

let note3 = Note(title: "Tomorrow", text: "Tomorrow never comes!", timestamp: Date())

var notes = [note1,note2,note3]


let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

let propertyListEncoder = PropertyListEncoder()

let encodedNote = try? propertyListEncoder.encode(notes)

try? encodedNote?.write(to: archiveURL, options: .noFileProtection)

let propertyListDecoder = PropertyListDecoder()

if let retrieveNoteData = try? Data(contentsOf: archiveURL),
    let decodeNote = try? propertyListDecoder.decode(Array<Note>.self, from: retrieveNoteData){
    print(decodeNote)
}
