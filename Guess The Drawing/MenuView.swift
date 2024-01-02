//
//  MenuView.swift
//  Guess The Drawing
//
//  Created by Leonard McCook-Carr on 12/30/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager: MatchManager
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchManager: MatchManager())
    }
}
