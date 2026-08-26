
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

struct ArticleListView: View {
    @State private var articles = Article.samples

    var body: some View {
        List {
            ForEach(articles) { article in
                ArticleCard(article: article)
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: false){
                            Button(
                                article.isFavorite ? "Unfavorite" : "Favorite",
                                systemImage: article.isFavorite ? "star.slash" : "star") {
                                    guard let index = articles.firstIndex(where: {$0.id == article.id}) else { return }
                                    articles[index].isFavorite.toggle()
                                }
                                .tint(.yellow)
                        }

                    .swipeActions {
                        Button(
                            article.isArchived ? "Unarchive" : "Archive",
                            systemImage: article.isArchived ? "tray.and.arrow.up" : "archivebox") {
                                guard let index = articles.firstIndex(where: {$0.id == article.id}) else { return }
                                articles[index].isArchived.toggle()
                            }
                            .tint(.indigo)
                        Button(role: .destructive) {
                            articles.removeAll(where: {$0.id == article.id })
                        }
                    }
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
        }
        .listStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        ArticleListView()
            .navigationTitle("List")
    }
}
