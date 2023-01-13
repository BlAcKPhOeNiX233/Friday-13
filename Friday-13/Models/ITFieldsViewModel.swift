//
//  ITFieldsViewModel.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 12/01/23.
//

import Foundation
struct ITFieldViewModel {

    var itFields: [ITField] = [
        
        ITField(
            title: "iOS Developer",
            image: "iOSDevImage",
            description:
"""
An iOS developer is a programmer who writes services and programs for iPhones. Due to the peculiarities of Apple devices and their operating system, you need to write special code for them.

The main language in which iOS developers write code is Swift. Apple developed it specifically for its devices in 2014. To write in Swift, you need a special development environment — Xcode. It works correctly only on Apple devices: MacBook, iMac, Mac Pro, Mac Studio, Mac mini.replaces the PS4 Share button.
""",
            salary: "A mid-level developer with at least three years of experience earns 2,500 EUR and above. And the most experienced iOS developers can count on a salary of 3,000 EUR, 4,000 EUR, and sometimes even 5,500 EUR per month.",
            demand: "The market for iOS devices is vast, especially abroad. Developers for these devices will always be needed and will not be left without work.",
            paths: [
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""])
            ]
        ),
        ITField(
            title: "Web Developer",
            image: "WebDevImage",
            description: "Tester",
            salary: "Tester",
            demand: "Tester",
            paths: [
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""])
            ]
        ),
        ITField(
            title: "Android Developer",
            image: "WebDevImage",
            description: "Tester",
            salary: "Tester",
            demand: "Tester",
            paths: [
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""]),
                Path(difficulty: "", task: [""])
            ]
        )
    ]
}
