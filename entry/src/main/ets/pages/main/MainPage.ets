import { HomePage } from '../home/HomePage';

@Entry
@Component
struct MainPage {
  items: string[] = ["首页", "广场", "公众号", "体系", "项目"]
  @State selectIndex: number = 0

  @Builder
  bottomBuilder(index: number, title: string, resource: Resource) {
    Column() {
      Image(resource)
        .width(18)
        .margin({ bottom: 6 })
        .fillColor(index == this.selectIndex ? $r('app.color.gray_33') : $r('app.color.gray_66'))
      Text(title)
        .fontColor(index == this.selectIndex ? $r('app.color.gray_33') : $r('app.color.gray_66'))
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        HomePage()
      }
      .tabBar(this.bottomBuilder(0, '首页', $r('app.media.main_home_icon')))

      TabContent() {
        Text('222')
      }
      .tabBar(this.bottomBuilder(1, '广场', $r('app.media.main_square_icon')))

      TabContent() {
        Text('333')
      }
      .tabBar(this.bottomBuilder(2, '公众号', $r('app.media.main_wxchat_icon')))

      TabContent() {
        Text('444')
      }
      .tabBar(this.bottomBuilder(3, '体系', $r('app.media.main_system_icon')))

      TabContent() {
        Text('555')
      }
      .tabBar(this.bottomBuilder(4, '项目', $r('app.media.main_project_icon')))
    }
    .onChange((index: number) => {
      this.selectIndex = index
    })
  }
}