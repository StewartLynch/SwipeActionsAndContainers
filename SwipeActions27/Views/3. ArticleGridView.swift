
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

import SwiftUI

struct ArticleGridView: View {
    var body: some View {
        ContentUnavailableView(
            "Grid Coming Soon",
            systemImage: "square.grid.2x2",
            description: Text("Build this layout from the completed scroll view.")
        )
    }
}

#Preview {
    NavigationStack {
        ArticleGridView()
            .navigationTitle("Grid")
    }
}
