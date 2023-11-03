//
// This source file is part of the Stanford Spezi open-source project
//
// SPDX-FileCopyrightText: 2023 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import XCTestApp


struct SpeziViewsTargetsTests: View {
    @State var presentingSpeziViews = false
    @State var presentingSpeziPersonalInfo = false


    var body: some View {
        NavigationStack {
            List {
                Button("SpeziViews") {
                    presentingSpeziViews = true
                }
                Button("SpeziPersonalInfo") {
                    presentingSpeziPersonalInfo = true
                }
            }
                .navigationTitle("Targets")
        }
            .sheet(isPresented: $presentingSpeziViews) {
                TestAppTestsView<SpeziViewsTests>()
            }
            .sheet(isPresented: $presentingSpeziPersonalInfo) {
                TestAppTestsView<SpeziPersonalInfoTests>()
            }
    }
}


#if DEBUG
#Preview {
    SpeziViewsTargetsTests()
}
#endif