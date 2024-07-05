import Flutter
import UIKit

class SwiftUIViewController: NSObject, FlutterPlatformView {
    private var _view: UIView

    init(frame: CGRect,
         viewIdentifier viewId: Int64,
         arguments args: Any?,
         binaryMessenger messenger: FlutterBinaryMessenger?) {
        _view = UIView()

        super.init()
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView){
        let viewController = MapboxViewController()
        viewController.view.frame = _view.bounds
        _view.addSubview(viewController.view)
    }
}

class SwiftUIViewControllerFactory: NSObject, FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return SwiftUIViewController(frame: frame, viewIdentifier: viewId, arguments: args, binaryMessenger: nil)
    }
}
