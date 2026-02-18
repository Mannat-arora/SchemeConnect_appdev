import SwiftUI

struct Categorysel_screen2: View {
    
    @State private var animate = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 15) {
                
                // MARK: Top Icon
                ZStack {
                    
                    Circle()
                        .fill(Color.blue.opacity(0.15))
                        .frame(width: 90, height: 90)
                        .scaleEffect(animate ? 1.05 : 0.95)
                        .animation(
                            .easeInOut(duration: 2)
                            .repeatForever(autoreverses: true),
                            value: animate
                        )
                    
                    Image(systemName: "square.grid.2x2.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.blue)
                }
                .padding(.top, 16)
                
                
                // MARK: Title
                Text("Available Schemes")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.blue, .cyan],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                
                
                // MARK: Description
                Text("Choose your category to discover relevant government schemes and benefits designed for you.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                
                // MARK: Category Cards
                VStack(spacing: 18) {
                    
                    CategoryItemCard(
                        title: "Student",
                        icon: "graduationcap.fill",
                        color: .blue
                    )
                    
                    CategoryItemCard(
                        title: "Farmer",
                        icon: "leaf.fill",
                        color: .green
                    )
                    
                    CategoryItemCard(
                        title: "Elderly",
                        icon: "person.fill",
                        color: .orange
                    )
                    
                    CategoryItemCard(
                        title: "Job Seeker",
                        icon: "briefcase.fill",
                        color: .purple
                    )
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                
                Spacer()
            }
            .padding(.bottom, 30)
        }
        
        // MARK: Background Gradient
        .background(
            LinearGradient(
                colors: [
                    Color.blue.opacity(0.08),
                    Color.white,
                    Color.blue.opacity(0.05)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .onAppear {
            animate = true
        }
    }
}



struct CategoryItemCard: View {
    
    var title: String
    var icon: String
    var color: Color
    
    @State private var isPressed = false
    
    var body: some View {
        
        NavigationLink(destination: Studentlist_screen3(category: title)) {
            
            HStack(spacing: 15) {
                
                // Icon Circle
                ZStack {
                    Circle()
                        .fill(color.opacity(0.15))
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: icon)
                        .font(.title2)
                        .foregroundColor(color)
                }
                
                
                // Text
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                
                Spacer()
                
                
                Image(systemName: "chevron.right.circle.fill")
                    .foregroundColor(color.opacity(0.7))
                    .font(.title3)
            }
            .padding()
            
            // Card background
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.white)
                    .shadow(
                        color: color.opacity(0.25),
                        radius: isPressed ? 4 : 10,
                        x: 0,
                        y: isPressed ? 2 : 6
                    )
            )
            
            // Press animation
            .scaleEffect(isPressed ? 0.97 : 1)
            .animation(.easeInOut(duration: 0.15), value: isPressed)
        }
        .buttonStyle(PlainButtonStyle())
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in isPressed = true }
                .onEnded { _ in isPressed = false }
        )
    }
}



#Preview {
    NavigationStack {
        Categorysel_screen2()
    }
}
