//
//  AppetizerDetailedView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-16.
//

import SwiftUI

struct AppetizerDetailedView: View {
    @EnvironmentObject var order: Order
    @ObservedObject var item: Item
    @Binding var isShowingView: Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(imageURL: item.appetizer.imageURL).frame(height: 220)
            VStack{
                Text(item.appetizer.name).font(.title)
                Text(item.appetizer.description).multilineTextAlignment(.center).padding()
                HStack(spacing: 40){
                    VStack(spacing: 10){
                        Text("Calories").font(.subheadline).bold()
                        Text("\(item.appetizer.carbs)").foregroundStyle(Color.secondary)
                    }
                    VStack(spacing: 10){
                        Text("Carbs").font(.subheadline).bold()
                        Text("\(item.appetizer.carbs)").foregroundStyle(Color.secondary)
                    }
                    VStack(spacing: 10){
                        Text("Protein").font(.subheadline).bold()
                        Text("\(item.appetizer.protein)").foregroundStyle(Color.secondary)
                    }
                }
            }.padding()
            Spacer()
            if item.quantity > 0{
                Stepper("Quantity: \(item.quantity)", value: $item.quantity).tint(.orange).frame(width: 200).padding(.bottom, 25)
            } else{
                Button("$\(item.appetizer.price.toString2(2)) - Add to card ") {
                    item.quantity = 1
                    order.add(item)
                }.buttonStyle(.borderedProminent).tint(.orange).controlSize(.large).padding(.bottom, 15)
            }
        }.frame(width: 350, height: 520)
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10)
            .overlay(alignment: .topTrailing) {
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


var order = Order()
#Preview {
    
    AppetizerDetailedView(item: MocData.sampleItem, isShowingView: .constant(true)).environmentObject(order)
}
