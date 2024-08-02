//
//  SparkRouter.swift
//  SparkRouter
//
//  Created by sfh on 2024/8/2.
//

import CTMediator

public extension CTMediator {
    
    /// 获取视频播放器VC
    @objc func getLFVideoPlayer(param: [String: Any], callback: ((String, String) -> Void)? = nil) -> UIViewController? {
        var params = param as [AnyHashable: Any]
        params["popblock"] = callback
        params[kCTMediatorParamsKeySwiftTargetModuleName] = "SparkBase"
        
        guard let vc = self.performTarget("LFVideoPlayer", action: "LFVideoPlayerController", params: params, shouldCacheTarget: false) as? UIViewController else { return nil }
        
        return vc
    }
    
    /// 获取原生做题VC
    @objc func getTestPaperNative(param: [String: Any]) -> UIViewController? {
        var params = param as [AnyHashable: Any]
        params[kCTMediatorParamsKeySwiftTargetModuleName] = "SparkBase"
        
        guard let vc = self.performTarget("TestPaperNative", action: "TestPaperNativeViewController", params: params, shouldCacheTarget: false) as? UIViewController else { return nil }
        
        return vc
    }
}
