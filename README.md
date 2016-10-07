![Logo](https://avatars3.githubusercontent.com/u/13508076?v=3&s=460)
# QPageView

- A simple encapsulation of PageView.

GitHub：[QianChia](https://github.com/QianChia) ｜ Blog：[QianChia(Chinese)](http://www.cnblogs.com/QianChia)

---
## Installation

### From CocoaPods

- `pod 'QPageView'`

### Manually
- Drag all source files under floder `QPageView ` to your project.
- Import the main header file：`#import "QPageView.h"`

---
## Examples

* PageView methods
 
	```objc
	
		// 创建分页视图控件方式
		
    	QPageView *pageView = [[QPageView alloc] init];
    
    	QPageView *pageView = [[QPageView alloc] initWithFrame:CGRectMake(0, 20, 300, 150)];
    
    	QPageView *pageView = [QPageView pageView];
    
    	QPageView *pageView = [QPageView pageViewWithImageNames:@[@"img_00", @"img_01", @"img_02"]
    	                                             autoScroll:YES
    	                                         autoScrollTime:2.0
    	                                  pageIndicatorPosition:Right];
		
	```

	```objc
	
    	// 创建分页视图控件
    	QPageView *pageView = [QPageView pageView];
    
    	pageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 2);
    
    	// 设置显示的图片
    	pageView.imageNames = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    
    	// 设置页码视图的颜色
    	pageView.currentPageIndicatorColor = [UIColor redColor];
    	pageView.pageIndicatorColor = [UIColor greenColor];
    
    	// 设置页码视图的位置
    	pageView.pageIndicatorPosition = Right;
    
    	// 设置是否隐藏页码视图
    	pageView.hidePageIndicator = NO;
    
    	// 设置滚动方向
    	pageView.scrollDirectionPortrait = YES;
    
	```

	```objc
	
    	// 设置显示的图片
    	NSArray *imageNameArr = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    
    	// 创建分页视图控件
    	QPageView *pageView = [QPageView pageViewWithImageNames:imageNameArr
    	                                             autoScroll:YES
    	                                         autoScrollTime:1.0
    	                                  pageIndicatorPosition:Center];
    
    	pageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 2);
    
	```



