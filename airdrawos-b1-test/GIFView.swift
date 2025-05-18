// GIFView.swift

import SwiftUI
import WebKit

struct GIFView: UIViewRepresentable {
    let name: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isUserInteractionEnabled = false
        webView.backgroundColor = .clear
        webView.isOpaque = false
        webView.scrollView.isScrollEnabled = false

        if let url = Bundle.main.url(forResource: name, withExtension: "gif"),
           let data = try? Data(contentsOf: url) {
            webView.load(data,
                         mimeType: "image/gif",
                         characterEncodingName: "UTF-8",
                         baseURL: URL(string: "")!)
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) { }
}