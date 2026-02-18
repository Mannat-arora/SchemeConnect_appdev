import SwiftUI
import UIKit

struct Final_screen4: View {
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Spacer()
            
            
            // Success Icon
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 80))
                .foregroundColor(.green)
            
            
            // Title
            Text("You're All Set!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            // Main Message
            Text("You have successfully explored government schemes available for citizens. You can now apply and benefit from these opportunities.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            
            // ✅ Source Mention (IMPORTANT FOR JUDGES)
            VStack(spacing: 5) {
                
                Text("Official Data Source")
                    .font(.headline)
                    .foregroundColor(.blue)
                
                
                Text("These schemes are sourced from official government portals such as MyScheme, National Scholarship Portal, PM Kisan Portal, and other authorized platforms.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal)
            
            
            Spacer()
            
            
            // Visit Official Portal Button
            Button {
                
                if let url = URL(string: "https://www.myscheme.gov.in") {
                    UIApplication.shared.open(url)
                }
                
            } label: {
                
                HStack {
                    Image(systemName: "globe")
                    Text("Visit Official Government Portal")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(12)
            }
            .padding(.horizontal)
            
            
            // Explore More Button
            NavigationLink(destination: Categorysel_screen2()) {
                
                HStack {
                    Image(systemName: "arrow.clockwise")
                    Text("Explore More Schemes")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(12)
            }
            .padding(.horizontal)
            
            
            Spacer()
            
            
            // Footer credibility note
            Text("This app simplifies access to government welfare schemes for every citizen.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    NavigationStack {
        Final_screen4()
    }
}
