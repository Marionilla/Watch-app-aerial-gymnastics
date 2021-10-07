//
//  NotificationView.swift
//  Watch app aerial gymnastics WatchKit Extension
//
//  Created by Марина Михайлова on 12.11.2020.
//

import SwiftUI

struct NotificationView: View {
    let title: String?
    let message: String?
  
    
    init(title: String? = nil,
         message: String? = nil) {
        self.title = title
        self.message = message
  
    }

    var body: some View {
            Divider()
            
            Text(message ?? "Check out your element for today in Aerialist!")
                .multilineTextAlignment(.center)
                .font(.caption)
                .lineLimit(0)
        }
    }

