//
//  Content-ViewModel.swift
//  MVVMBasics
//
//  Created by Kaushal Kumbagowdana on 6/2/23.
//

import Foundation
import SwiftUI
/*
    ViewModel's purpose: in charge of taking care of all the functionality in our UI
        - logic should NOT be mix with the UI; breaks the principle of MVVM's speration of concerns
        - are where we actually create the changes and take care of the state
        - intermediary for the Model and the View with added functionality
        - makes calls to serives/apis
*/

// allows this class to be used inside out content view & previents it from being confused with other views
extension ContentView {
    // functionality is happening on the main thread
        // ObservableObject -> From Combine
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter: Int = 0
        @Published var itemList = [Item]()
        
        func increment() {
            counter += 1
        }
        
        func addItem() {
            let randomItems = ["Playstation", "Xbox", "Wii", "Gameboy"]
            let item = randomItems.randomElement()!

            let newItem = Item(name: item, description: "Item \(itemList.count + 1)")
            
            // adds the newItem to the itemList at the 0th idx; the animation will show the new item being added to the top of the list
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
        
    }
}




