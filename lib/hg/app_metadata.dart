abstract final class HgAppMetadata {
  static const String version = '1.4.1';
  static const String buildNumber = '6';
  static const String versionLabel = 'v1.4.1 (6)';
  static const String releaseTitle = '在线更新与稳定版';
  static const List<String> releaseNotes = [
    '设置页与启动阶段支持通过 GitHub Releases 检查在线更新。',
    '新增 GitHub Pages 在线预览，APK 与未签名 IPA 自动发布到 GitHub Releases。',
    'GitHub 数据源清单增加 Contents API、jsDelivr 与 Raw 多级回退。',
    '修复 iOS 安装包结构错误，导致部分签名工具提示未找到 App 包的问题。',
    '产品介绍与关于页面改为面向中文用户的正式说明。',
  ];

  static const List<HgReleaseRecord> releaseHistory = [
    HgReleaseRecord(
      version: 'v1.4.1',
      buildNumber: '6',
      date: '2026-11-16',
      title: '在线更新与稳定版',
      features: [
        '设置页和启动阶段通过 GitHub Releases 检查在线更新。',
        'GitHub Pages 在线预览、APK 和未签名 IPA 自动构建与发布。',
      ],
      improvements: [
        'GitHub 数据源清单增加 Contents API、jsDelivr 和 Raw 多级回退。',
        '产品 README 与关于果幕页面改为面向中文黄果短剧用户的正式产品说明。',
      ],
      fixes: [
        '修复 iOS 安装包结构错误，导致部分签名工具提示未找到 App 包的问题。',
        '修复 GitHub 源清单在部分网络环境不可达时没有备用镜像的问题。',
      ],
    ),
    HgReleaseRecord(
      version: 'v1.4.0',
      buildNumber: '5',
      date: '2026-11-16',
      title: '原生体验与续播版',
      features: [
        '追剧、历史、喜欢、详情、榜单和专题统一读取本机播放进度，可继续上次集数与播放位置。',
        '播放器新增可拖动进度条，支持点击定位、跟手预览时间和松手跳转。',
        '长按播放器两侧可临时二倍速，上滑锁定，锁定后继续长按两侧下滑解除。',
        '详情页右上角三点菜单新增分享、刷新详情、从头播放和清除本剧记录。',
        '设置页新增独立更新记录页，按版本展示新增功能、体验优化和问题修复。',
        '设置页与启动阶段通过 GitHub Releases 检查在线更新，并按平台提供 APK、IPA 或 Release 入口。',
      ],
      improvements: [
        '剧场页改为顶部全部、短剧、漫剧切换，缩短页面并移除重复说明区。',
        '榜单页改为重点作品大卡与完整排名列表，专题页改为精选大图与双列卡片。',
        '标签页改为分类切换和紧凑标签网格，标签详情页同步精简。',
        '个人页右上角固定为设置入口，消息入口保留在设置左侧，头像抽屉移除重复设置项。',
        '首页、剧场、榜单、专题、标签等页面无缓存时统一展示微光骨架动画。',
      ],
      fixes: [
        '修复追剧入口和历史入口显示的播放集数不一致。',
        '修复续播只记录集数、不记录具体播放位置的问题。',
        '修复详情页播放按钮总是从第 1 集开始的问题。',
      ],
    ),
    HgReleaseRecord(
      version: 'v1.3.0',
      buildNumber: '4',
      date: '',
      title: '第三方客户端与内容中心版',
      features: [
        '首页按精选推荐、最近上新、热播短剧、专题推荐重新组织，并支持查看更多。',
        '支持多个自定义数据源与本机网络自动发现官方最新可用线路。',
        '观看历史改为本机保存，不再依赖官方历史接口。',
      ],
      improvements: [
        '搜索、短剧、漫剧、题材标签、榜单和专题数据在启动阶段预加载。',
        '设置页支持外观选择、缓存管理与数据源管理。',
        '吃瓜页面选中图标和首页快捷卡改为自绘图形，减少不同环境的字体差异。',
      ],
      fixes: ['修复个人页重复入口与观看历史不同步问题。', '修复部分环境中图标字体缺失导致选中状态不可见。'],
    ),
  ];
}

class HgReleaseRecord {
  const HgReleaseRecord({
    required this.version,
    required this.buildNumber,
    required this.date,
    required this.title,
    required this.features,
    required this.improvements,
    required this.fixes,
  });

  final String version;
  final String buildNumber;
  final String date;
  final String title;
  final List<String> features;
  final List<String> improvements;
  final List<String> fixes;

  String get versionLabel => '$version ($buildNumber)';
}
