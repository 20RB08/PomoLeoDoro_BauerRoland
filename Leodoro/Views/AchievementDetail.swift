//
//  AchievementDetail.swift
//  Leodoro
//
//  Created by Roland Eduardo Bauer on 20.10.26.
//

import SwiftUI

struct AchievementDetail: View {
    
    @State var achievemnt: Achievement
    
    var body: some View {
        ScrollView{
            VStack{
                Image(achievemnt.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                    .padding(.top, 30)
            }
            
            VStack {
                Text("Achievement Locked")
                    .foregroundColor(.white)
                    .padding(20)
            }.background(.pormodoRed)
                .cornerRadius(20)
                .padding(20)
            
            VStack(alignment: .leading){
                Text(achievemnt.title)
                    .font(.title)
                
                HStack {
                    Text(achievemnt.description)
                    Spacer()
                }.font(.subheadline)
                    .foregroundStyle(.secondary)
                Divider()
                Text("\(achievemnt.points) Points")
            }.padding(20)
        }.navigationTitle(achievemnt.title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AchievementDetail(achievemnt: achievements[0])
}
