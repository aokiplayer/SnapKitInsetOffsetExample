import UIKit
import SnapKit

class InsetVC: UIViewController {
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label = {
            let label = UILabel()
            self.view.addSubview(label)

            label.backgroundColor = .darkGray
            label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
            label.textColor = UIColor.white
            label.textAlignment = .center
            label.numberOfLines = 4
            label.text = """
                         top: 100
                         leading: 100
                         trailing: 100
                         bottom: 100
                         """
            return label
        }()

        label.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.leading.equalToSuperview().inset(100)
            make.trailing.equalToSuperview().inset(100)
            make.bottom.equalToSuperview().inset(100)
        }
    }
}
