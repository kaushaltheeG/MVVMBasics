//
//  ContentView.swift
//  MVVMBasics
//
//  Created by Kaushal Kumbagowdana on 6/2/23.
//

import SwiftUI

struct ContentView: View {
    // @StateObject is a property wrapper type that instantiates (an instance of) an observable object
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn) // $ is shorthand for Binding: provides a two-way connection between a value & UI component where both effect eachother; source of truth
                .padding()
            HStack {
                Button("Increment") {
                    vm.increment()
                }
                Text("\(vm.counter)")
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
            }
            List(vm.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item") {
                vm.addItem()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
