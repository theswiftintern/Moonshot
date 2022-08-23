//
//  ListLayout.swift
//  Moonshot
//
//  Created by RJ Tedoco on 8/23/22.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack(spacing: 20) {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)

                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.5))
                    }
                }
                .padding(.vertical)
            }
            .listRowBackground(Color.darkBackground)
        }
    }
}
