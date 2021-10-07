//
//  ContentView.swift
//  Watch app aerial gymnastics WatchKit Extension
//
//  Created by Марина Михайлова on 12.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State var img  = Image("Goodluck")
    let imgs = [Image( "k3"),
                Image("p75"),
                Image("p45"),
                Image("k53"),
                Image("p43"),
                Image("p41"),
                Image("p16"),
                Image("p14"),
                Image("k6"),
                Image("p29"),
                Image("p31"),
                Image("p36"),
                Image("p18"),
                Image("k14"),
                Image("k1"),
                Image("k20"),
                Image("k25"),
                Image("k28"),
                Image("k29"),
                Image("k38"),
                Image("k66"),
                Image("k85"),
                Image("k93"),
                Image("r1"),
                Image("r2"),
                Image("r9"),
                Image("r18"),
                Image("r24"),
                Image("r31"),
                Image("r33"),
                Image("r40"),
                Image("r71"),
                Image("r76"),
                Image("r78"),
                Image("r79"),
                Image("r80"),
                Image("r81"),
                Image("r82"),
                Image("r85"),
                Image("r86"),
                Image("r88"),
                Image("r89"),
                Image("t10"),
                Image("t11"),
                Image("t13"),
                Image("t17"),
                Image("t20"),
                Image("t23"),
                Image("t31"),
                Image("t32"),
                Image("t33"),
                Image("t35"),
                Image("t40"),
                Image("t37"),
                Image("t42"),
                Image("t44"),
                Image("t45"),
                Image("t49"),
                Image("t52"),
                Image("t62"),
    ]
   @State var firsttext = Text("Click on the button☝️ Get answers to your questions")
    @ State private var textic = [Text("Learn and repeat the element. You're not doing it perfect"), Text("You are beautiful in this element"), Text("You can squeeze more from this element"), Text("Today is your day. You will get something new"), Text("You are a hard worker, keep up the good work"), Text("You have done poorly this week. Work be harder!"), Text("Work better on the element"), Text("Improve your balance"), Text("Improve your strength"), Text("Improve your stretch"), Text("Practice \"Hanging\" today"), Text("Practice your \"Back flag\" today"), Text("Train the \"Back horizont\" today"), Text("Do not be lazy"), Text("Pay attention to the handstand"), Text("Pay attention to the Split"), Text("Make the \"Bridge\" perfect"), Text("Listen better coach"), Text("Practice your performance"), Text("Pump up your body"), Text("Be grateful for everything you can do"), Text("Attention to safety in training"), Text("Learn more about sports theory"), Text("Be serious"), Text("Do not give up. Only forward"), Text("Your back is not strong enough"), Text("Stay after training for another 20 minutes - stretching"), Text("Watch more competition videos"), Text("Do not envy others that they do better elements."), Text("Do Extra Exercise at Home"), Text("Update your workout playlist"), Text("Take a picture of your achievements with your phone"), Text("Respect and listen more to your coach"), Text("Don't miss your training"), Text("Mark your dreams on paper"), Text("Be sure you are cool"), Text("Don't be angry with the truth"), Text("Watch your videos, fix mistakes"), Text("You will achieve a lot"), Text("Buy a new workout uniform"), Text("Push up more"), Text("Pay attention to your hands"), Text("Choose your favorite props"), Text("Subscribe to the Instagram group world_of_aaerial_gymnastics"), Text("Find in AppStore \"Aerialist\" app"), Text("Check the safety of the props and mountings")]
 
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color("Color"))
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                HStack{
                img
                    .resizable()
                   .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(20)
                    .padding(.all)
                    .shadow(radius: 10)
                }
                
            Spacer()
       
            Button(action: {
                var tmp: Image
                repeat {
                    tmp = self.imgs.randomElement() ?? self.img
                } while tmp == self.img
                self.img = tmp
                
                // ChangeText
                
                var tt: Text
                repeat {
                    tt = self.textic.randomElement() ?? self.firsttext
                } while tt == self.firsttext
                self.firsttext = tt
               
            }, label: {
            Text("Let's play")
                .foregroundColor(Color("Color-1"))
                .shadow(radius: 10)
                .padding(.all)
                .background(Color("Color-2").opacity (0.8))
                .cornerRadius(20)
                
        })
            .padding(.all)
            Spacer()
                HStack{
                firsttext
                    .padding(.all)
                    .multilineTextAlignment(.center)
                }
    }
        }
    }
}

