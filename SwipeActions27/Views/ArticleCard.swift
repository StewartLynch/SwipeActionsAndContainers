
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

struct ArticleCard: View {
    let article: Article
    var body: some View {
        HStack {
            // Article Info
            HStack(spacing: 10) {
                Image(systemName: article.systemImage)
                    .font(.title2)
                    .foregroundStyle(.cyan)
                Text(article.title)
                    .font(.headline)
            }
            // Status Icons
            HStack(spacing: 10) {
                if article.isArchived {
                    Image(systemName: "archivebox.fill")
                        .foregroundStyle(.indigo)
                }
                
                if article.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

#Preview {
    ArticleCard(article: Article.previewSample)
}
