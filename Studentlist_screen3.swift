import SwiftUI
import UIKit

struct Studentlist_screen3: View {
    
    var category: String
    
    // ✅ Search text state
    @State private var searchText = ""
    
    // ✅ Filter schemes by category AND search text
    var schemesToShow: [Scheme] {
        schemesdata.filter {
            $0.category == category &&
            (searchText.isEmpty ||
             $0.name.localizedCaseInsensitiveContains(searchText))
        }
    }
    
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                // ✅ SEARCH BAR
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search for schemes", text: $searchText)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.never)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.08), radius: 4)
                .padding(.horizontal)
                
                
                // ✅ Scheme Cards
                ForEach(schemesToShow) { scheme in
                    
                    FlipSchemeCard(scheme: scheme)
                }
                
                
                // ✅ Finish Button → Final Screen
                NavigationLink(destination: Final_screen4()) {
                    
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                        Text("Finish")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                
            }
            .padding(.vertical)
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("\(category) Schemes")
        .navigationBarTitleDisplayMode(.inline)
    }
}



struct FlipSchemeCard: View {
    
    @State private var isFlipped = false
    
    var scheme: Scheme
    
    
    private func normalizedURL(from link: String) -> URL? {
        
        let trimmed = link.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if let url = URL(string: trimmed), url.scheme != nil {
            return url
        }
        
        let httpsPrefixed = "https://" + trimmed
        
        return URL(string: httpsPrefixed)
    }
    
    
    var body: some View {
        
        ZStack {
            
            // FRONT SIDE
            VStack {
                
                Image(systemName: "doc.text.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                Text(scheme.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .frame(maxWidth: .infinity, minHeight: 140)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
            .opacity(isFlipped ? 0 : 1)
            .allowsHitTesting(!isFlipped)
            .onTapGesture {
                isFlipped.toggle()
            }
            
            
            // BACK SIDE
            VStack(alignment: .leading, spacing: 8) {
                
                Text(scheme.name)
                    .font(.headline)
                
                Text("Benefit:")
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                
                Text(scheme.benefit)
                
                Text("Eligibility:")
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                
                Text(scheme.eligibility)
                
                
                if let url = normalizedURL(from: scheme.applyLink) {
                    
                    Link(destination: url) {
                        
                        HStack {
                            Image(systemName: "arrow.up.right.square.fill")
                            Text("Apply Now")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    }
                    .padding(.top, 8)
                }
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 140)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
            .rotation3DEffect(
                .degrees(180),
                axis: (x: 0, y: 1, z: 0),
                perspective: 0.002
            )
            .opacity(isFlipped ? 1 : 0)
            .allowsHitTesting(isFlipped)
            
        }
        .contentShape(Rectangle())
        .compositingGroup()
        .rotation3DEffect(
            .degrees(isFlipped ? 180 : 0),
            axis: (x: 0, y: 1, z: 0),
            perspective: 0.002
        )
        .animation(.easeInOut(duration: 0.5), value: isFlipped)
    }
}
