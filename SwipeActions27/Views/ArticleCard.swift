
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
    let isGrid: Bool
    init(article: Article, isGrid: Bool = false) {
        self.article = article
        self.isGrid = isGrid
    }
    var body: some View {
        Group {
            if isGrid {
                VStack {
                    // Article Info
                    articleView
                    // Status Icons
                    statusIcons
                }
            } else {
                HStack {
                    // Article Info
                    articleView
                    // Status Icons
                    statusIcons
                }
            }
        }
        .padding(10)
        .frame(height: 70)
        .background(.background.secondary, in: .rect(cornerRadius: 12))
    }
    
    var articleView: some View {
        HStack(spacing: 10) {
            Image(systemName: article.systemImage)
                .font(.title2)
                .foregroundStyle(.cyan)
            Text(article.title)
                .font(.headline)
        }
    }
    
    var statusIcons: some View {
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

#Preview {
    ArticleCard(article: Article.previewSample)
}
