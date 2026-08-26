
//
//----------------------------------------------
// Original project: SwipeActions27
// by  Stewart Lynch on 2026-08-24
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2026 CreaTECH Solutions. All rights reserved.

struct Article: Identifiable, Hashable {
    let id: Int
    let title: String
    let systemImage: String
    var isFavorite = false
    var isArchived = false
}

extension Article {
    static let samples = [
        Article(id: 1, title: "SwiftUI Layout", systemImage: "square.grid.2x2"),
        Article(id: 2, title: "Swipe Actions", systemImage: "hand.draw"),
        Article(id: 3, title: "Accessibility", systemImage: "accessibility"),
        Article(id: 4, title: "macOS Design", systemImage: "macwindow"),
        Article(id: 5, title: "Data Flow", systemImage: "arrow.triangle.branch"),
        Article(id: 6, title: "Animations", systemImage: "sparkles"),
        Article(id: 7, title: "Navigation", systemImage: "point.topleft.down.to.point.bottomright.curvepath"),
        Article(id: 8, title: "Observation", systemImage: "eye"),
        Article(id: 9, title: "Architecture", systemImage: "building.columns"),
        Article(id: 10, title: "Testing Views", systemImage: "checkmark.seal"),
        Article(id: 11, title: "Toolbars", systemImage: "menubar.rectangle"),
        Article(id: 12, title: "Scroll Effects", systemImage: "scroll")
    ]
    
    static var previewSample: Article {
        var sample = Self.samples[0]
        sample.isFavorite = true
        sample.isArchived = true
        return sample
    }
}
