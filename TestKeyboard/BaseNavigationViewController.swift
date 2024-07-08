import UIKit

open class BaseNavigationViewController: UINavigationController {
    public init() {
        super.init(nibName: nil, bundle: nil)
        isNavigationBarHidden = true
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }

    // TODO: (e.mironenko) Не работает вместе с IQKeyboardManager. Надо разобрать почему
    open override var navigationController: UINavigationController? { self }
}
