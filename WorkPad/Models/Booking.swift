//
//  Booking.swift
//  WorkPod
//
//  Created by Amy Ha on 16/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import Foundation

class  Booking {
    var bookingDate: Date // date of booking
    var selectedDate: Date? // date the user has booked
    var location: Location
    
    enum Location {
        case threadneedle
        case liverpoolst
        case shoreditch
    }
    
    init(location: Location) {
        self.bookingDate = Date()
        self.location = location
    }
}
