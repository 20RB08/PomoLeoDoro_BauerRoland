//
//  infoView.swift
//  Leodoro
//
//  Created by Roland Eduardo Bauer on 29.09.26.
//

import SwiftUI

struct InfoView: View {
    
    let description = "The Pomodoro Technique, developed by Francesco Cirillo in the late 1980s, is a time managment method. It breaks work into intervals, usually 25 minute long, separated by short breaks. Each time interval is callled ”Pomodoro” (Italian for ”tomato”), named after the tomato-shaped kitschen timer Cirillo used in college. After completing 4 Pomodoros, take a longer break of arround 15-30 minutes."
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0) {
                HStack{
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 50)
                        .padding(.top, 60)
                }.padding(.bottom, 100)
                    .background(.promodoroGreen.opacity(0.3))
                    .clipShape(Corners(corner: [.bottomRight], size: CGSize(width: 55, height: 55)))
                
                HStack {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 15) {
                                Text("The Pomodoro Thenique")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Yout way \nto productivity")
                                    .font(.system(size: 20))
                            }.foregroundColor(.white)
                            Spacer()
                        }.padding(.leading, 40)
                            .padding(.top, 80)
                    }.padding(.bottom, 30)
                        .frame(width: (UIScreen.main.bounds.width * 0.8))
                        .background(.pormodoRed)
                        .clipShape(Corners(corner: [.topLeft, .topRight, .bottomRight], size: CGSize(width: 70, height: 70)))
                    Spacer()
                }.padding(.top, -70)
                
                ZStack {
                    Color(.pormodoRed)
                    VStack{
                        HStack {
                            Text("How it works")
                                .padding(.top, 30)
                                .padding(.leading, 40)
                                .fontWeight(.bold)
                            Spacer();
                        }
                        Text(description)
                            .padding(.top, 10)
                            .padding([.leading, .trailing], 40)
                        
                        CardView(descriiption: "Choose a task, stay focused and work for 25 minutes.", image: "PomodoroClock", type: .imageLeft)
                        
                        CardView(descriiption: "Afgte completing 1 \"Pomodoro\", take a 5 minute break", image: "PomodoroCafe", type: .imageRight)
                        
                        CardView(descriiption: "Reapeat these steps until you have completed 4 \"Pomodoro\"", image: "PomodoroClock", type: .imageLeft)
                        
                        CardView(descriiption: "Well done! Take a longer break between 25-30 minutes. Restart the process if neede.", image: "PomodoroShake", type: .imageRight)
                    }.background(.white)
                }
            }.edgesIgnoringSafeArea(.top)
                .statusBar(hidden: true)
        }
    }
}

#Preview {
    InfoView()
}
