//
//  AppetizerDetailedView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-16.
//

import SwiftUI

struct AppetizerDetailedView: View {
    var appetizer: Appetizer
    @EnvironmentObject var order: Order
    @Binding var isShowingView: Bool
    var body: some View {
        VStack{
            AppetizerRemoteImage(imageURL: appetizer.imageURL).frame(height: 220)
            VStack{
                Text(appetizer.name).font(.title)
                Text(appetizer.description).multilineTextAlignment(.center).padding()
                HStack(spacing: 40){
                    VStack(spacing: 10){
                        Text("Calories").font(.subheadline).bold()
                        Text("\(appetizer.carbs)").foregroundStyle(Color.secondary)
                    }
                    VStack(spacing: 10){
                        Text("Carbs").font(.subheadline).bold()
                        Text("\(appetizer.carbs)").foregroundStyle(Color.secondary)
                    }
                    VStack(spacing: 10){
                        Text("Protein").font(.subheadline).bold()
                        Text("\(appetizer.protein)").foregroundStyle(Color.secondary)
                    }
                }
            }.padding()
            Spacer()
            Button(action: {
                order.add(appetizer)
                isShowingView = false
            }, label: {
                Text("$\(appetizer.price.toString2(2)) - Add To Order").font(.title2).bold().padding(5)
            }).buttonStyle(.borderedProminent).tint(Color.orange).padding()
        }.frame(width: 350, height: 520)
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10).overlay(alignment: .topTrailing) {
                Button(action: {
                    isShowingView = false
                }, label: {
                    ZStack {
                        Circle().frame(width:30, height:30).foregroundColor(.white).opacity(0.6)
                        Image(systemName: "xmark" ).foregroundColor(.black).imageScale(.small).frame(width: 44, height: 44)
                    }
                }).padding()
                
            }
    }
}



#Preview {
    AppetizerDetailedView(appetizer: MocData.sampleAppetizer, isShowingView: .constant(true))
}
