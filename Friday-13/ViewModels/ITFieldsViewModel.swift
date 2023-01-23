//
//  ITFieldsViewModel.swift
//  Friday-13
//
//  Created by Gabriella Annunziata on 12/01/23.
//

import Foundation

class ITFieldViewModel: ObservableObject {
    @Published var itFields = [
        ITField(
            title: "iOS Developer",
            image: "iOSDevImage",
            description:
"""
An iOS developer is a programmer who writes services and programs for iPhones. Due to the peculiarities of Apple devices and their operating system, you need to write special code for them.

The main language in which iOS developers write code is Swift. Apple developed it specifically for its devices in 2014.
To write in Swift, you need a special development environment — Xcode. It works correctly only on Apple devices: MacBook, iMac, Mac Pro, Mac Studio, Mac mini.replaces the PS4 Share button.
""",
            salary:
"""
A mid-level developer with at least three years of experience earns 2,500 EUR and above.
And the most experienced iOS developers can count on a salary of 3,000 EUR, 4,000 EUR, and sometimes even 5,500 EUR per month.
""",
            demand: "The market for iOS devices is vast, especially abroad. Developers for these devices will always be needed and will not be left without work.",
            paths: [
                Path(buttonTitle: "Easy way", isSelected: false, descriptionModal: "", difficulty: "", task: [""]),
                Path(buttonTitle: "Medium way", isSelected: false, descriptionModal: "",difficulty: "", task: [""]),
                Path(
                    buttonTitle: "Hard way",
                    isSelected: false,
                    descriptionModal:
"""
Decide on the direction and take training in this direction on YouTube channels or free courses to understand whether you like this area or not.
Make sure that you cope with this and delve into this matter within a month.
Go to good one year courses with mentors and deadlines, and if there is an opportunity not to work for a while, then go to bootcamps for 4 months and be sure to have a mentor (all with employment).

Make a portfolio of real 3-5 projects in parallel and look for a mentor, and also look for a job.
Junior intern in the company (we work for about six months) and study with colleagues in parallel.
Change jobs and companies (because longer you can't sit for a Junior year).
Learn English and look for a job in a foreign market. Mentor and attend conferences in parallel. Becomes Senior, speak at conferences, mentor and then there are more ways:
1. Open your own business;
2. Become a manager;
3. Become an architect or go to a top-level company.
""",
                    difficulty: "",
                    task: [""]
                )
            ]
        ),
        ITField(
            title: "Web Developer",
            image: "WebDevImage",
            description: "Tester",
            salary: "Tester",
            demand: "Tester",
            paths: [
                Path(buttonTitle: "Easy way", isSelected: false, descriptionModal: "", difficulty: "", task: [""]),
                Path(buttonTitle: "Medium way", isSelected: false, descriptionModal: "",difficulty: "", task: [""]),
                Path(buttonTitle: "Hard way", isSelected: false, descriptionModal: "", difficulty: "", task: [""])
            ]
        ),
        ITField(
            title: "Android Developer",
            image: "WebDevImage",
            description: "Tester",
            salary: "Tester",
            demand: "Tester",
            paths: [
                Path(buttonTitle: "Easy way", isSelected: false, descriptionModal: "", difficulty: "", task: [""]),
                Path(buttonTitle: "Medium way", isSelected: false, descriptionModal: "",difficulty: "", task: [""]),
                Path(buttonTitle: "Hard way", isSelected: false, descriptionModal: "", difficulty: "", task: [""])
            ]
        )
    ]
}
