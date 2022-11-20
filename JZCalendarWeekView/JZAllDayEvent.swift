//
//  JZAllDayEvent.swift
//  JZCalendarWeekView
//
//  Created by Kaia Gao on 19/11/2022.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

open class JZAllDayEvent: JZBaseEvent {

    /// If a event is All-Day, then it will be shown at top of calendarView
    public var isAllDay: Bool

    public init(id: String, startDate: Date, endDate: Date, completed:Bool, isAllDay: Bool, title:String) {
        self.isAllDay = isAllDay
        super.init(id: id, startDate: startDate, endDate: endDate, completed: completed, title: title)
    }

    open override func copy(with zone: NSZone?) -> Any {
        return JZAllDayEvent(id: id, startDate: startDate, endDate: endDate, completed: completed, isAllDay: isAllDay, title:title)
    }

}
