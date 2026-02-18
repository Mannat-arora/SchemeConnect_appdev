import SwiftUI

struct welcome_screen1: View {
    
    @State private var animate = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                // MARK: Background Gradient
                LinearGradient(
                    colors: [
                        Color.blue.opacity(0.25),
                        Color.white,
                        Color.blue.opacity(0.1)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                
                VStack(spacing: 30) {
                    
                    Spacer()
                    
                    
                    // MARK: Animated Icon Circle
                    ZStack {
                        
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [Color.blue.opacity(0.3), Color.blue.opacity(0.05)],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .frame(width: 170, height: 170)
                            .scaleEffect(animate ? 1.05 : 0.95)
                            .animation(
                                .easeInOut(duration: 2)
                                .repeatForever(autoreverses: true),
                                value: animate
                            )
                        
                        
                        Image(systemName: "building.columns.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.blue, .cyan],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .shadow(color: .blue.opacity(0.4), radius: 10)
                    }
                    
                    
                    // MARK: App Title with Gradient
                    Text("SchemeConnect")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .shadow(color: .blue.opacity(0.3), radius: 5)
                    
                    
                    // MARK: Subtitle Card
                    Text("Helping citizens discover government schemes easily and improve their future.")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.08), radius: 10)
                        .padding(.horizontal, 30)
                    
                    
                    Spacer()
                    
                    
                    // MARK: Feature Highlights
                    VStack(spacing: 15) {
                        
                        FeatureRow(icon: "checkmark.seal.fill",
                                   text: "Discover schemes instantly")
                        
                        FeatureRow(icon: "doc.text.magnifyingglass",
                                   text: "Search and filter easily")
                        
                        FeatureRow(icon: "arrow.up.right.square.fill",
                                   text: "Apply directly from official portal")
                    }
                    
                    
                    Spacer()
                    
                    
                    // MARK: Get Started Button
                    NavigationLink(destination: Categorysel_screen2()) {
                        
                        HStack {
                            
                            Text("Get Started")
                                .font(.headline)
                            
                            Image(systemName: "arrow.right.circle.fill")
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(18)
                        .shadow(color: .blue.opacity(0.4), radius: 15)
                        .padding(.horizontal, 40)
                    }
                    
                    
                    Spacer()
                    
                    
                    // MARK: Footer
                    Text("Powered by Official Government Scheme Portals")
                        .font(.footnote)
                        .foregroundColor(.gray.opacity(0.7))
                    
                }
            }
            .onAppear {
                animate = true
            }
        }
    }
}



struct FeatureRow: View {
    
    var icon: String
    var text: String
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            Image(systemName: icon)
                .foregroundColor(.blue)
            
            Text(text)
                .foregroundColor(.black.opacity(0.8))
                .font(.subheadline)
        }
        .padding(.horizontal, 25)
    }
}



#Preview {
    welcome_screen1()
}
