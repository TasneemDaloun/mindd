//
//  NotificationView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct NotificationView: View {
   @State private var motivational = false
    @State private var DrinkingWater = false
    
    @State private var events = false
@State private var tasks = false
    @State private var event = false
    @State private var dailyReflect = false
    @State private var work = false
    var body: some View {
        Form{
            Section("General"){
                Toggle("motivational qoutes", isOn: $motivational)
                Toggle("Drinking Water Reminder", isOn: $DrinkingWater)
            }
            Section("Calender"){
                Toggle("events", isOn: $event)
                Toggle("Tasks", isOn: $tasks)
                Toggle("Daily Reflection", isOn: $dailyReflect)
                Toggle("Work", isOn: $work)
            }
           
        } .navigationTitle("Notification")
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NotificationView()
        }
    }
}
