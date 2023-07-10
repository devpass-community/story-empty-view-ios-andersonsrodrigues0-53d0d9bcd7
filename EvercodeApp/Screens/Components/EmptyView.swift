import UIKit

class EmptyView: UIView {
    
    lazy var text: UILabel = {
        let label = UILabel()
        label.text = "No data found"
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension EmptyView {
    func setupViews() {
        self.backgroundColor = .white
        
        self.configureSubviews()
        self.configureConstraints()
    }
    
    func configureSubviews() {
        self.addSubview(text)
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            text.leadingAnchor.constraint(equalTo: leadingAnchor),
            text.trailingAnchor.constraint(equalTo: trailingAnchor),
            text.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
