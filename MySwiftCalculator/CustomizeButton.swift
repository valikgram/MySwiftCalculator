import UIKit

final class CustomizeButton: UIButton {
    private let touchDownAlpha: CGFloat = 0.4
    private var color: UIColor = .orange
    private func setup() {
        layer.cornerRadius = 40
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        if let backgroundColor = backgroundColor {
            color = backgroundColor
        }
        setup()
    }
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                touchDown()
            } else {
                cancelTracking(with: nil)
                touchUp()
            }
        }
    }
    private let timerStep: TimeInterval = 0.01
    private let animateTime: TimeInterval = 0.3
    lazy var alphaStep: CGFloat = {
        return (1 - touchDownAlpha) / CGFloat(animateTime / timerStep)
    }()
    @objc func animation() {
        guard let backgroundAlpha = layer.backgroundColor?.alpha else {
            stopTimer()
            return
        }
        let newAlpha = backgroundAlpha + alphaStep
        if newAlpha < 1 {
            layer.backgroundColor = color.withAlphaComponent(newAlpha).cgColor
        } else {
            layer.backgroundColor = color.cgColor
            stopTimer()
        }
    }
    private func touchDown() {
        stopTimer()
        layer.backgroundColor = color.withAlphaComponent(touchDownAlpha).cgColor
    }
    
    private func touchUp() {
        timer = Timer.scheduledTimer(timeInterval: timerStep,
                                     target: self,
                                     selector: #selector(animation),
                                     userInfo: nil,
                                     repeats: true)
    }
    weak var timer: Timer?
    private func stopTimer() {
        timer?.invalidate()
    }
    deinit {
        stopTimer()
    }
}
