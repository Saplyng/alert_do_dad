//
//  ContentView.swift
//  alert_do_dad
//
//  Created by student on 11/30/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var warningAlert = false
    @State var warning2Alert = false
    @State var selectedDate = Date()
    
    var body: some View {
        VStack {
            Button("Warning"){
                self.warningAlert.toggle()
            }
            .alert(isPresented: $warningAlert) { () -> Alert in
                Alert(title: Text("Warning"), message: Text("Zombies are loose!"))
            }
                .padding()
            
            Button("Warning 2"){
                self.warning2Alert.toggle()
            }
            .alert(isPresented: $warning2Alert) { () -> Alert in
                let primaryButton = Alert.Button.default(Text("OK")){print("ok button pressed")}
                let secondaryButton = Alert.Button.cancel(Text("Cancel")){
                    print("cancel")
                }
                return Alert(title: Text("Warning"), message: Text("Zombies are loose!"), primaryButton: primaryButton, secondaryButton: secondaryButton)
            }
            .padding()
            
            DatePicker("Date for zombie apocalypse", selection: $selectedDate, displayedComponents: .date)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
