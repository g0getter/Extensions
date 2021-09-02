//
//  NSMutableAttributedString.swift
//  Extensions
//
//  Created by 여나경 on 2021/09/02.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    // MARK: - Styled String
    func regular(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 굵게
    func bold(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.boldSystemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font] // attribute를 완성
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 기울임꼴
    func italic(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.italicSystemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 밑줄
    func underlined(_ value:String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .underlineStyle : NSUnderlineStyle.single.rawValue
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    // MARK: - 여백
    /// 자간
    func kern(_ value:String, fontSize: CGFloat, kernValue: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .kern: kernValue,            
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    // MARK: - Highlight
    /// Highlight with `highlightColor`. foregroundColor is white
    func highlight(_ value:String, fontSize: CGFloat, highlightColor: UIColor) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .foregroundColor: UIColor.white,
            .backgroundColor: highlightColor,
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
}
