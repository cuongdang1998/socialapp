package com.cuongdq.social_app

import android.os.Bundle
import com.cuongdq.social_app.BuildConfig.FLAVOR
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel


class  MainActivity : FlutterActivity(){
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    val flutter_native_splash = true
    var originalStatusBarColor = 0
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
        originalStatusBarColor = window.statusBarColor
        window.statusBarColor = 0xff26334f.toInt()
    }
    val originalStatusBarColorFinal = originalStatusBarColor

        MethodChannel(flutterEngine?.dartExecutor, "flavor").setMethodCallHandler{ _, result -> result.success(FLAVOR)}
    }
}