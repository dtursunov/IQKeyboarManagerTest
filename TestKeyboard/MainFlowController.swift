import UIKit

final class MainFlowController: BaseNavigationViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let controller = getRoot()
        self.isNavigationBarHidden = false
        setViewControllers([controller], animated: false)
    }
    
    private func getRoot() -> UIViewController {
        let root = MainViewController { action in
            switch action {
            case .showSecondController:
                self.showDetail()
            }
        }
        
        return root
    }
    
    private func showDetail() {
        let controller = DetailViewController()
        pushViewController(controller, animated: true)
    }
}
