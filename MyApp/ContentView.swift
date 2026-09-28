import SwiftUI
import Playgrounds

// Contentview: is the loading screen. starting point of program. dont delete this
struct ContentView: View {
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
                
            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}

