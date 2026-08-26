
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
    @State private var articles = Article.samples
    let columns = [GridItem(.adaptive(minimum: 145))]
    @State private var isPresenting = false
    var body: some View {
        ScrollView {
            Text("Swipe a card to reveal its actions")
                .font(.callout)
                .foregroundStyle(.secondary)
                .opacity(isPresenting ? 0 : 1)
            LazyVGrid(columns: columns) {
                ForEach(articles, id: \.self) { article in
                    ArticleCard(article: article, isGrid: true)
                        .padding(.vertical, 8)
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: false){
                                Button(
                                    article.isFavorite ? "Unfavorite" : "Favorite",
                                    systemImage: article.isFavorite ? "star.slash" : "star") {
                                        guard let index = articles.firstIndex(where: {$0.id == article.id}) else { return }
                                        withAnimation {
                                            articles[index].isFavorite.toggle()
                                            isPresenting = false
                                        }
                                    }
                                    .tint(.yellow)
                            } onPresentationChanged: { isPresenting in
                                withAnimation {
                                    self.isPresenting = isPresenting
                                }
                            }

                        .swipeActions {
                            Button(
                                article.isArchived ? "Unarchive" : "Archive",
                                systemImage: article.isArchived ? "tray.and.arrow.up" : "archivebox") {
                                    guard let index = articles.firstIndex(where: {$0.id == article.id}) else { return }
                                    withAnimation {
                                        articles[index].isArchived.toggle()
                                        isPresenting = false
                                    }
                                }
                                .tint(.indigo)
                            Button(role: .destructive) {
                                withAnimation {
                                    articles.removeAll(where: {$0.id == article.id })
                                    isPresenting = false
                                }
                            }
                        } onPresentationChanged: { isPresenting in
                            withAnimation {
                                self.isPresenting = isPresenting
                            }
                        }
                }
            }
            .padding(.horizontal)
        }
        .swipeActionsContainer()
    }
}

#Preview {
    NavigationStack {
        ArticleGridView()
            .navigationTitle("Grid")
    }
}
