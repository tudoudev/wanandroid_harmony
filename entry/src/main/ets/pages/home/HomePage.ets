@Component
export struct HomePage {

  aboutToAppear(): void {

  }

  build() {
    Column() {
      Swiper() {
        Text('1')
        Text('2')
        Text('3')
      }
      .width('100%')
      .height(200)
      .indicator(
        Indicator.dot()
          .selectedColor($r('app.color.gray_33'))
          .color($r('app.color.gray_99'))
      )
      .backgroundColor(Color.Yellow)
    }
    .height('100%')
  }
}