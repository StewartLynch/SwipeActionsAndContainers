
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

struct ArticleScrollView: View {
    var body: some View {
        ContentUnavailableView(
            "Scroll View Coming Soon",
            systemImage: "scroll",
            description: Text("Recreate the List content with a custom scroll layout.")
        )
    }
}

#Preview {
    NavigationStack {
        ArticleScrollView()
            .navigationTitle("Scroll View")
    }
}
