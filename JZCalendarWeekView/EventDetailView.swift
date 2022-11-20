//
//  EventDetailView.swift
//  JZCalendarWeekView
//
//  Created by Kaia Gao on 11/19/22.
//  Copyright © 2022 Jeff Zhang. All rights reserved.
//


import SwiftUI
import Foundation

@available(iOS 13.0, *)
struct EventDetailView: View {
    @State var event:JZBaseEvent
    

    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                
                if #available(iOS 15.0, *) {
                    Button("Back", role: .cancel) {
                        print("Perform back")
                        Button("Delete", role: .destructive) {
                            print("Perform delete")
                        }
                        
                    }
                    
                }
                Text("Events")
                Text(event.title)
                    .font(.largeTitle)
                    .lineSpacing(50)
                
                HStack{
                    Text("Start:")
                        .frame(width:73)
                    if #available(iOS 15.0, *) {
                        Text(event.startDate.formatted())
                    } else {
                        // Fallback on earlier versions
                    }
                }
                HStack{
                    Text("End:")
                        .frame(width:73)
                    if #available(iOS 15.0, *) {
                        Text(event.endDate.formatted())
                    } else {
                        // Fallback on earlier versions
                    }
                }
                Text("Notes")
                Spacer()
                
                Button("Mark as completed"){
                    event.completed = !event.completed
                }
                
                Spacer()
            }
            
        }
    }
    
}
//let detailView = UIView(frame: CGRect(x: 10, y: 100, width: 300, height: 200))
//
//// setup UIView background colour
//detailView.backgroundColor = .white
//
//// Add rounded corners to UIView
//detailView.layer.cornerRadius=25
//
//// Add border to UIView
//detailView.layer.borderWidth=2
//
//// Change UIView Border Color to Red
//detailView.layer.borderColor = UIColor.lightGray.cgColor
//
//let delBtn = UIButton(type: .system)
//let completeBtn = UIButton(type: .system)
//var completeAlert:String = "Mark as Completed"
//let titleLabel:UILabel = UILabel()
//if #available(iOS 11.0, *) {
//    titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
//} else {
//    // Fallback on earlier versions
//    titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
//}
//let completeLabel:UILabel = UILabel()
//completeLabel.text = "Completed"
//
//
//if let event = (selectedCell as? JZLongPressEventCell)?.event{
//    if (!event.completed){
//        completeAlert = "Mark as UN-Completed"
//        completeLabel.text = "unComplete"
//        completeBtn.tintColor = .red
//    }
//    titleLabel.text = event.title
//}
//completeBtn.setTitle(completeAlert, for: .normal) // display before tapping
//// Add UIView as a Subview
//
//detailView.addSubviews([titleLabel,delBtn,completeLabel])
