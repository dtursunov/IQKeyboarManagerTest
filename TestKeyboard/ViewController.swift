import UIKit

extension MainViewController {
    enum Action {
        case showSecondController
    }
}

final class MainViewController: UIViewController {
    
    private let label = UILabel()
    private let button = UIButton()
    private let textField = UITextField()
    
    private let action: (Action) -> Void
    
    init(action: @escaping ((Action) -> Void)) {
        self.action = action
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(label)
        label.frame = .init(
            origin: .init(x: 16, y: 100),
            size: .init(width: UIScreen.main.bounds.width - 32, height: 40)
        )
        label.textColor = .black
        label.text = "infinite looop test"
        
        view.addSubview(button)
        button.setTitle("Go to detail", for: .normal)
        button.addTarget(self, action: #selector(showDetail), for: .touchUpInside)
        button.setTitleColor(.blue, for: .normal)
        button.frame = .init(
            origin: .init(x: 16, y: 160),
            size: .init(width: UIScreen.main.bounds.width - 32, height: 40)
        )
        
        view.addSubview(textField)
        textField.borderStyle = .roundedRect
        textField.frame = .init(
            origin: .init(x: 16, y: 220),
            size: .init(width: UIScreen.main.bounds.width - 32, height: 40)
        )
        textField.placeholder = "edit here"
    }

    @objc private func showDetail() {
        action(.showSecondController)
    }
}

