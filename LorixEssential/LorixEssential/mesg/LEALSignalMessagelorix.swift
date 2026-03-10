//
//  LEALSignalMessagelorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//
import Foundation

struct LEALSignalMessagelorix: Codable {
    let LEALSenderIdlorix: String
    let LEALSenderNamelorix: String
    let LEALAvatarUrllorix: String
    let LEALLastPhaselorix: String
    let LEALTimestampTextlorix: String
    let LEALUnreadPulseCountlorix: Int
}

struct LEALEventPulseModellorix: Codable {
    let LEALEventIdlorix: String
    let LEALEventTitlelorix: String
    let LEALCoverVisuallorix: String
    let LEALParticipantPreviewslorix: [String]
    let LEALTotalVibeslorix: String
}
