//
//  Misc.swift
//  Guess The Drawing
//
//  Created by Leonard McCook-Carr on 12/31/23.
//

import Foundation

let everydayObjects = ["pen", "paper", "book", "cup", "spoon", "fork", "plate", "chair", "table", "ball",
    "balloon", "apple", "banana", "car", "truck", "doll", "teddy bear", "sock", "shoe",
    "shirt", "pants", "hat", "coat", "brush", "toothbrush", "toothpaste", "soap", "towel",
    "bed", "pillow", "blanket", "clock", "watch", "phone", "television", "remote", "computer",
    "mouse", "keyboard", "door", "window", "tree", "flower", "grass", "sun", "moon", "star",
    "cloud", "rain", "snow", "cat", "dog", "bird", "fish", "butterfly", "ant", "bee",
    "cupcake", "cookie", "bread", "milk", "juice", "water", "egg", "cheese", "carrot", "peas",
    "corn", "apple juice", "orange", "strawberry", "grape", "lemon", "peach", "cherry", "pumpkin", "potato",
    "onion", "lettuce", "cucumber", "tomato", "bell pepper", "broccoli", "pencil", "eraser", "crayon", "marker",
    "glue", "scissors", "tape", "notebook", "backpack", "bus", "bicycle", "airplane", "boat", "train",
    "key", "bucket", "mirror", "comb", "lamp", "fan", "blender", "microwave", "oven", "refrigerator",
    "freezer", "dishwasher", "sponge", "mop", "broom", "dustpan", "trash can", "mailbox", "fence", "garden",
    "slide", "swing", "sandbox", "pool", "kite", "glove", "baseball", "basketball", "soccer ball", "football",
    "skateboard", "scooter", "helmet", "goggles", "flag", "fire truck", "ambulance", "police car", "stop sign", "traffic light",
    "crosswalk", "hydrant", "bench", "park", "zoo", "museum", "library", "school", "grocery store", "restaurant",
    "cinema", "theater", "hospital", "pharmacy", "post office", "bank", "hotel", "beach", "mountain", "river"]

enum PlayAuthState: String {
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "Please sign in to Game Center to play."
    case authenticated = ""
    
    case error = "There was an error logging into Game Center."
    case restricted = "You're allowed to play multiplayer games!"
}

struct PastGuess: Identifiable {
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxTimeRemaining = 100
