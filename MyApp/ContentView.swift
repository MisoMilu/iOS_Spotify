import SwiftUI
import Playgrounds

// Contentview: is the loading screen. starting point of program. dont delete this
struct ContentView: View {
    @State private var time: Double = 0
    @State var isPlaying = false
    var body: some View {
        //Build all of spotify in here
        ZStack{
            Color(.green)
                .ignoresSafeArea()
            VStack(spacing: 60){
                HStack(spacing: 100){
                    Image(systemName: "chevron.down")
                        .font(.title2)
                    Text("夏草が邪魔をする")
                        .font(.footnote)
                        .bold()
                    Image(systemName:"ellipsis")
                }
            
                Image("natsukusa")
                    // allow resize
                    .resizable()
                    // keep orginal ratio, and dont crop it
                    .scaledToFit()
                    // always clip before padding?
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .shadow(radius: 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("夏陰、ピアノを弾く")
                                .font(.system(size: 25))
                                .bold()

                            Text("Yorushika")
                                .font(.system(size: 15))
                                .opacity(0.8)
                        }
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.title)
                        
                    }
                    VStack {
                        // $ means give me a CONNECTION to progress
                        Slider(value: $time, in: 0...92)
                        // tint means make the slider's accent part white
                            .tint(.white)
                        HStack{
                            Text("\(Int(time/60)):\(Int(time.truncatingRemainder(dividingBy: 60)))")
                            Spacer()
                            Text("-\(1-Int(time/60)):\((92-60)-Int(time.truncatingRemainder(dividingBy: 60)))")
                            
                        }.font(.caption)
                        .opacity(0.8)
                        HStack{
                            Button(action:{},
                                   label:{Image(systemName: "shuffle")
                                    }
                            ).font(.title2)
                            .foregroundStyle(Color(red:100/255,green:209/255,blue:110/255))
                            Spacer()
                            
                            Button(action:{},
                                   label:{Image(systemName: "backward.end.fill")
                                    }
                            ).padding(.trailing, 25)
                            
                            Button(action:{isPlaying.toggle()}, // flip bool
                                   label:{Image(systemName: isPlaying ? "play.circle.fill":"pause.circle.fill")
                                    }
                            ).font(.system(size: 60))
                            
                            
                            Button(action:{},
                                   label:{Image(systemName: "forward.end.fill")
                                    }
                            ).padding(.leading, 25)
                            
                            Spacer()
                            Button(action:{}, label:{Image(systemName: "repeat")}).font(.title2)
                    
                        }.font(.title)
                        HStack{
                            Image(systemName: "desktopcomputer").foregroundStyle(Color(red:100/255,green:209/255,blue:110/255))
                            Text("Web Player (Chrome)").font(.caption2).foregroundStyle(Color(red:100/255,green:209/255,blue:110/255))
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                            Image(systemName: "list.bullet")
                            
                        }.padding(.top, 3)
                    }
                }.padding(.leading, 10)
                    .padding(.trailing, 10)
            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}

