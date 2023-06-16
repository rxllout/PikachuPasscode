//
//  PikaViewOne.swift
//  PikachuLogin
//
//  Created by Shreyas Vilaschandra Bhike on 18/03/22.
//

import SwiftUI

struct PikaView: View {
    var body: some View {
        ViewOne()
    }
}

struct PikaView_Previews: PreviewProvider {
    static var previews: some View {
        PikaView()
    }
}


struct ViewOne: View {
    
       @State var shockOne = false
       @State var shockTwo = false
       @State var visibilityOpacity = false
       @State var bubbleOne = false

    @State var yOffset1 : CGFloat = 0.0
       
       var body: some View {
  
             
       
          
           ZStack{
               Image("bluble")
                   .resizable()
                   .frame(width: 350, height: 250)
                   
                   .opacity(bubbleOne ? 1 : 0)
                   .clipShape(Circle().offset(y: bubbleOne ? 0 : -40))
                   .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                   {
                                     bubbleOne.toggle()
                                    }
                             }
        
            
               //MARK:- body : close eyes
               Image("Sq1")
                   .resizable()
                   .frame(width: 350, height: 350, alignment: .center)
                   .offset(y:yOffset1)

                    
                   
               
               
               //MARK:- shock
//               Image("shock1")
//                   .resizable()
//                   .frame(width: 350, height: 350)
//                  
//                   .opacity(shockOne ? 1 : 0)
//                   .clipShape(Circle().offset(x: shockOne ? 0 : 125))
//                   .onAppear() {
//                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                                   {
//                                     shockOne.toggle()
//                                    }
//                        }
               

            
                  }
               
           }
      }


//
struct ViewTwo: View {
       @State var tail = false
    @State var yOffset : CGFloat = 0.0

       
       var body: some View {

           ZStack{
               //MARK:- tail
               Image("cldwhite")
                   .resizable()
                   .frame(width: 300, height: 300, alignment: .center)
                   .rotationEffect(.degrees(1))
                   .offset(x: 10, y: 0)
                   .offset(y:yOffset)
                   .rotationEffect(.degrees(tail ? 0 : 1))
                   .onAppear() {
                       
                       withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)){
                           yOffset += 10
                       }
                       
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                   {
                                     tail.toggle()
                                    }
                 
                        }
            
               //MARK:- body : close eyes
               Image("Sq1")
                   .resizable()
                   .frame(width: 350, height: 350, alignment: .center)
               
            
                  }
               
           }
      }

