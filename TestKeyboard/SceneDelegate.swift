//
//  SceneDelegate.swift
//  TestKeyboard
//
//  Created by Diyor Tursunov on 08/07/24.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = MainFlowController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

