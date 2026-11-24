//
//  AchievementList.swift
//  Leodoro
//
//  Created by Roland Eduardo Bauer on 13.10.26.
//

import SwiftUI

struct AchievementList: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView{
                ZStack {
                    List(achievements) { achievement in
                        NavigationLink {
                            AchievementDetail(achievemnt: achievement)
                        } label: {
                            AchievementRow(achievement: achievement, screenWidth: geometry.size.width)
                        }
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                    }
                    .scrollContentBackground(.hidden)
                }
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color(.promodoroGreen),
                                Color(.pormodoRed),
                                Color.white
                            ]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    AchievementList()
}
