//
//  ManualWebViewController.swift
//  Savanna iOS
//
//  Created by Louis D'hauwe on 01/05/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import UIKit
import WebKit
import PanelKit

class ManualWebViewController: UIViewController {
	
	@IBOutlet weak var webView: WKWebView!
	
	var htmlURL: URL!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.view.tintColor = UIColor(hexString: "#ef5433")
		webView.loadFileURL(htmlURL, allowingReadAccessTo: htmlURL.deletingLastPathComponent())
		
	}
	
}

extension ManualWebViewController: StoryboardIdentifiable {
	
	static var storyboardIdentifier: String {
		return "ManualWebViewController"
	}
	
}

extension ManualWebViewController: PanelContentDelegate {
	
	var preferredPanelContentSize: CGSize {
		return CGSize(width: 420, height: 440)
	}
	
	var preferredPanelPinnedHeight: CGFloat {
		return 320
	}
	
	var minimumPanelContentSize: CGSize {
		return CGSize(width: 320, height: 320)
	}
	
	var maximumPanelContentSize: CGSize {
		return CGSize(width: 600, height: 1400)
	}
	
	var shouldAdjustForKeyboard: Bool {
		return true
	}

}

extension ManualWebViewController: PanelStateCoder {
	
	var panelId: Int {
		return 1
	}

}
