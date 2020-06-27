import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart'; // 轮播图的实现

class HomePage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
//  List _imageUrls = [
////    "https://www.baidu.com/link?url=YS1jQBg30sHY7f9lCoNQ-04wGAr00dZnp1KzIeXdGcxc8hXxSpfoNm2osvnh6sl3kx7s8OhIcIOi9Ehn1c7oRQU83Ahzb7eiMFBMYR422TY3xACLLRkLne1qGmXT12GU8rg1PY_IdabV7YuzPrN7X0gLuYbuT472ACVo4v4mnIuwdLtyjTG8dY3dAUvby7l3lyMcZBZwYnADxFsINwVPJYmrACA1lb-Bt24_xhqJz30cgwFTSyUxu7g6NGSWK1jVrBC3zoCkl8qHWejpwll6fBsWkht24tfvpcIdwXSwp6B6FGXNijfm9Z2pezcBgRbvdyLDedH4xN16G9NU4LMnUDEGJ-7tRj_gtpxBVCeKQvur0gr08erwcl_iQxQ8XSdLz0U_oepSZsn9U8gXEmw--xinLWr20g2DOe5JhKWIqup5QzDckj63R2kcaVO0s-QSEkULVerWe2yH8-gOvJzl-6QSyG6J78OnAruQJiQvXKEBR3q8Ui8IjCwedeYBa09oHkhwbssJ2TU9_qMSp7qgaUk8jj70kA5TcdA98QCd771NRgvopMk-nwR12Brt8VmTewmNKEXzJNwRCFEU0WXnPzxxLhQHwpJXRQr4MFdnk1e&timg=https%3A%2F%2Fss0.bdstatic.com%2F94oJfD_bAAcT8t7mm9GUKT-xh_%2Ftimg%3Fimage%26quality%3D100%26size%3Db4000_4000%26sec%3D1593233275%26di%3D02f6940bd60295847e860b510238db45%26src%3Dhttp%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg&click_t=1593233279220&s_info=2047_1214&wd=&eqid=ec24743e00020fc6000000055ef6cf7a",
////    "https://www.baidu.com/link?url=9OZXv01pJXgKbdi3koePzy783vssXO88hxNzMEZLaE0IQrsaUtVdjYfhQpyP_y8TO4tTJBxYSAA-Xl4vbSS6maMUhQ9SA5Y3U2MnZ76010W3UJ5KS-a_5ZmhskqKAVazHsBKXBM6HVKrDL-jRgEqM1QZdkJ3ZoWOT9AxkqWk1Ha1yTE-XW-FyJLuQ8QvaUh5QBxOtqEq9gfzDYA4hGyzCUCuvWbxi8_99WQPJDYGvYTHRm3XKorzkPBtBJ1nXWyfhDq28mTnvgQMrEcUI3xYK7v34n1lGKPhV-ThhD8wt9NiKjHVg5tA6KmtNVgVek7KxZO15TttHNY_X4Z7jUZBiS8LWqa4MXTvJlTVl69kpdtTn8d9A--G5KBx2Yh8KB6ZJuBzSmnJRH0mCMGHeHdTHnxCWRIEpR6onUF8AFDoIKQhg_XuSvIb7arUBjiQvEQ8pXSQ0vSS7ysonl7Nc-KarXx6QSVrRwrwYLTlw_DNW-3ATbJ4CoerhbZTX8ummw9Zk3yQc-IMT8DGF4X77JOuKQqdFakUBrpGwJGDczwFvhE4qXwYd3JY1efX4nrd-OJJML7GVQ_XIad_xG0XO75zFSmaZ1qEiCwZX6XU74RPaOS&timg=&click_t=1593233310168&s_info=2047_1214&wd=&eqid=ec24743e00020fc6000000055ef6cf7a",
////    "https://www.baidu.com/link?url=jyib4IJAvto0O0XBsYn1nt757uFosmKp8OTlOBgSICPbc_cbKXGwPfbpi-1H5yHshpY-sxIZ8H3PvVM9-8TbhZmdQirGBsR4doN_x9DT5vZ50KKPDB8CMGOfX5NqggtUP8cqqjd5HonncR4nm1qrz3105x7OQ88w1BT0E5D5SLdq_bjI_FA7j3Kyu7vBBshDkAcg_iMQnm57aHwGYBc3gY70GrTPiMypmQmTZWtY83x7BBppcYDTeoZhrWxaj3Niv7qiWxlN8yjXFT6jDgq6pEkEMZRXvkRjgvoTa_ZMtGTPzAvy4Wj2zuc3_1bmTcN3WLyyP-94TRt5ug6hv3EZknXkDltZblSeIA-pizTUZlpn9toiZQoq9u0hKsRbzZAKaaoTEQt3wFErdWAnl2hXWvZDlSBNMZgoFeUMYcDjguJYtXBemlBM49n1LnSkpC7EM2nAiXZQj6BNdjzqPpyA2cnoc54dTy8jkhXaTZ4A1NkonguOIW09vtSLe7Wzde0_-M-mT0cveK-iOD5O4-ghRHF6lFvFdarBwECn1enY1DeVnKzVYb13_TXwmftVM24A4sZZoCYUWqNvwRDLJRbgoXvK__-dmi91hDRX_ve9cES&timg=https%3A%2F%2Fss0.bdstatic.com%2F94oJfD_bAAcT8t7mm9GUKT-xh_%2Ftimg%3Fimage%26quality%3D100%26size%3Db4000_4000%26sec%3D1593233275%26di%3De9831675c54461d99b784bebde94ebd4%26src%3Dhttp%3A%2F%2Fa2.att.hudong.com%2F36%2F48%2F19300001357258133412489354717.jpg&click_t=1593233325446&s_info=2047_1214&wd=&eqid=ec24743e00020fc6000000055ef6cf7a"
////  ];


  List _imageUrls = [
  "https://dimg04.c-ctrip.com/images/0zg1y1200028g96bj2A31.jpg",
  "https://dimg04.c-ctrip.com/images/zg0n1g000001hi84zB7D6.jpg",
"https://dimg04.c-ctrip.com/images/zg0n1g000001hi84zB7D6.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 160, // banner的高度
              child: Swiper(
                itemCount: _imageUrls.length,
                autoplay: true, // 自动播放
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    _imageUrls[index],
                    fit: BoxFit.cover,
                  );
                },
                pagination: SwiperPagination(), // 底部按钮
              ),
            ),
          ],
        ),
      ),
    ); // 页面的根结点
  }
}
