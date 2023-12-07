import Foundation
import SwiftUI

class SigninViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupfourText: String = ""
    @Published var isValidGroupfourText: Bool = true
}
