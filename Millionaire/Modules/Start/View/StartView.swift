import SwiftUI
import SoundManager

struct StartView: View {
    @State private var isShowingLoginView = false
    @State private var isShowingRulesView = false
    @State private var animationAmount = 0.0
    
    var body: some View {
        NavigationView {
            ZStack {
                GradientBackgroundView()
                
                VStack {
                    Spacer()
                    
                    Image(.logoLarge)
                        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                withAnimation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 2)) {
                                    animationAmount += 360
                                }
                            }
                        }
                    
                    Spacer()
                    
                    Text("Добро пожаловать в игру")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("КТО ХОЧЕТ СТАТЬ \n МИЛЛИОНЕРОМ")
                        .font(.title)
                        .foregroundStyle(LinearGradient(colors: [.purple, .blue], startPoint: .leading, endPoint: .trailing))
                    
                    
                    VStack {
                        NavigationLink {
                            RulesView()
                        } label: {
                            DestinationView(title: "Правила игры")
                        }
                        
                        NavigationLink {
                            LoginView()
                        } label: {
                            DestinationView(title: "Играть")
                        }
                    }
                    Spacer()

                }
            }
        }.onAppear {
            SoundManager.shared.play(.start)
        }
    }
}
