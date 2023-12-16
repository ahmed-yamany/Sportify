//
//  LiveSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 16/12/2023.
//

import SwiftUI

struct LiveSection: View {
    let router: Router
    @State private var selectedSPNewsIndex: Int = 0
    
    var body: some View {
        VStack {
            newsSection
            
            SPPaginationView(count: 3, selectedIndex: selectedSPNewsIndex)
        }
        .animation(.easeIn, value: selectedSPNewsIndex)
        .frame(height: 300)
    }
    
    var newsSection: some View {
        TabView(selection: $selectedSPNewsIndex) {
            ForEach(0..<3, id: \.self) { index in
                LiveCell(router: router)
                    .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

private struct LiveCell: View {
    let router: Router
        
    var body: some View {
        VStack(alignment: .leading) {
            image
            
            Text("keep an eye on the stadium")
                .font(.h3.bold())
            
            Text("Watch sports live or highlights, read every news from your smartphone")
                .font(.regular)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .padding(.horizontal, .containerSpacing)
    }
    
    var image: some View {
        ZStack(alignment: .topLeading) {
            // swiftlint: disable all
            AsyncImage(url: URL(string: "https://s3-alpha-sig.figma.com/img/47e0/dbe4/5109d7420604a647764276a8198aaa7c?Expires=1703462400&Signature=PE3RXqGCqdYtl3KOm2a~wM7z9srQmXufwf9P2bn8QsuzMpFUgXlJnV4KwBfSxpkI8WE99~8Ae6LpmUnPTH-FqVWcTIPh7wbrm~7~lGgpBNlNYXpHh0o2wICiRJB1lpFqjEgHtSVnW2BNZ~Y11upD6z8IZR-PvN~caT5UYf4GkiMinG9vLdBPGUEor0YJRCAvhmvd53s5IBBVaaotnk~3oyQExxPEyteWuNwupNq~wiZLXPpDMmnwSk1rkkY3CYqhYdBg5G99URRLVUj3JF3Wft~9QxTCW4HcFWf0oMlWjaLPHRD6wk3TpcAk7qjINhm0sb2koawCBkm39kYZ1W9yfQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4")) { imagePhase in
                imagePhase
                    .image?
                    .resizable()
            }
            .frame(height: 208)
            // swiftlint: enable all
            
            HStack {
                Image(systemName: "chevron.right.2")
                Text("Watch live now")
            }
            .font(.regular.bold())
            .foregroundStyle(Color.spBackground)
            
            .padding(.horizontal, 20)
            .background {
                SPShape()
                    .fill(.spPink)
                    .frame(height: 28)
            }
           
            .padding(.leading, -14)
            .padding(.top, 14)
        }
        .mask {
            Rectangle()
                .frame(height: 208)
        }
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared )
}
