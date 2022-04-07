# [iOS/Swift] SnapKit을 이용한 autoLayout
* 관련 내용은 https://minkyoung.tistory.com/2?category=0 에서 확인할 수 있습니다. 
## Prerequisite
* XCode Version 13.2.1에서 개발을 진행한다.
* SnapKit을 설치한다.
  * **File > Add Packages**에서 아래 openAPI를 설치한다.
     ```
     https://github.com/SnapKit/SnapKit.git
     ```
* 스토리보드를 사용하지 않기 위한 초기 셋팅이 필요하다.
  1. Main.storyboard를 삭제한다.
  2. info.plist에 있는 Main.storyboard와 관련된 항목을 삭제한다.
     <img src="https://user-images.githubusercontent.com/62936197/149618014-9c2a58e8-9bb7-49f7-8552-1f381a08b63a.png" width="700" height="130">
     <img src="https://user-images.githubusercontent.com/62936197/149618059-abea1cef-5272-4abf-bfa2-ae300ab9def0.png" width="700" height="20">
  3. SceneDelegate에서 생성할 ViewController가 나타날 수 있도록 설정한다.
      ```swift
      class SceneDelegate: UIResponder, UIWindowSceneDelegate {
          var window: UIWindow?

          func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
              guard let windowScene = (scene as? UIWindowScene) else { return }
        
              self.window = UIWindow(windowScene: windowScene)
              let rootViewController = ViewController()
              window?.rootViewController = rootViewController
              window?.makeKeyAndVisible()
          }
      }
      ```
