import SwiftUI
import Playgrounds

// Contentview: is the loading screen. starting point of program. dont delete this
struct ContentView: View {
    @State private var time: Double = 0
    var body: some View {
        //Build all of spotify in here
        ZStack{
            Color(.green)
                .ignoresSafeArea()
            VStack(spacing: 80){
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
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("夏陰、ピアノを弾く")
                                .font(.title2)
                                .bold()

                            Text("Yorushika")
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.title)
                        
                    }.padding(.leading, 10)
                    VStack {
                        // $ means give me a CONNECTION to progress
                        Slider(value: $time, in: 0...92)
                        // tint means make the slider's accent part white
                            .tint(.white)
                        Text("\(time) seconds is \(time/60) minutes and \(time.truncatingRemainder(dividingBy: 60))")
                    }
                    
                }


            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}

