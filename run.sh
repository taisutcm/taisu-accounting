#!/bin/bash

echo "=== 记账 App 运行指南 ==="
echo ""

# 检查 Flutter 是否已安装
if command -v flutter &> /dev/null; then
    echo "✓ Flutter 已安装"
    flutter --version
    echo ""
    
    # 检查项目依赖
    echo "=== 安装项目依赖 ==="
    cd ~/Desktop/expense_tracker_app
    flutter pub get
    echo ""
    
    # 检查可用设备
    echo "=== 检查可用设备 ==="
    flutter devices
    echo ""
    
    # 运行应用
    echo "=== 运行应用 ==="
    echo "请选择运行方式："
    echo "1. Chrome 浏览器（推荐，最简单）"
    echo "2. iOS 模拟器"
    echo "3. Android 模拟器"
    echo ""
    read -p "请输入选项 (1/2/3): " choice
    
    case $choice in
        1)
            flutter run -d chrome
            ;;
        2)
            open -a Simulator
            sleep 3
            flutter run -d ios
            ;;
        3)
            echo "请先启动 Android 模拟器"
            flutter run -d android
            ;;
        *)
            echo "无效选项，默认使用 Chrome"
            flutter run -d chrome
            ;;
    esac
    
else
    echo "✗ Flutter 未安装"
    echo ""
    echo "=== 安装 Flutter ==="
    echo "1. 下载 Flutter SDK:"
    echo "   cd ~/Desktop"
    echo "   git clone https://github.com/flutter/flutter.git -b stable"
    echo ""
    echo "2. 添加到环境变量:"
    echo "   echo 'export PATH=\"\$PATH:\$HOME/Desktop/flutter/bin\"' >> ~/.zshrc"
    echo "   source ~/.zshrc"
    echo ""
    echo "3. 验证安装:"
    echo "   flutter --version"
    echo ""
    echo "4. 检查环境:"
    echo "   flutter doctor"
    echo ""
    echo "安装完成后，重新运行此脚本"
fi
