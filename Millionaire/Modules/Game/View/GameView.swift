import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("logoLarge")
                    .resizable()
                    .frame(width: 153, height: 158)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .colorMultiply(Color.gray.opacity(0.8))
                
                    HintButtonsView()
                
                HStack {
                    Text("Вопрос 1")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                    HStack {
                        Image("cash")
                        Text("500₽")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                    }
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                
                Text("О чём писал Грибоедов, отмечая, что он «нам сладок и приятен»")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 122)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(LinearGradient(colors: [.indigo, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                    )
                    .padding([.horizontal, .top], 16)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical) {
                    VStack(spacing: 18) {
                        AnswerButtonView(label: "A.", text: "Дым Отечества") {
                            // action
                        }
                        AnswerButtonView(label: "B.", text: "Дух купечества") {
                            // action
                        }
                        AnswerButtonView(label: "C.", text: "Дар пророчества") {
                            // action
                        }
                        AnswerButtonView(label: "D.", text: "Пыл девичества") {
                            // action
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.horizontal)
            }
            
        }
    }
}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

