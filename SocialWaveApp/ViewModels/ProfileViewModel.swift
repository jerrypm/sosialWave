//
//  ProfileViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 04/11/23.
//

import SwiftUI
import SwiftyJSON

class ProfileViewModel: ObservableObject {
    @Published var userData: UserModel?
    private let profileAPIService: IProfileAPIService

    init(profileAPI: IProfileAPIService) {
        profileAPIService = profileAPI
    }

    func fetchProfile() {
        profileAPIService.getProfile { [weak self] response in
            guard let self = self else { return }

            guard let userDataJSON = response["userData"].dictionary else {
                print("Invalid JSON format")
                return
            }

            // Initialize a single UserModel object
            self.userData = UserModel(data: JSON(userDataJSON))

        } failed: { message in
            print("Error \(message)")
        }
    }
}
