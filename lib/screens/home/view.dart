import 'package:asshir/helper/core_classes/app_theme.dart';
import 'package:asshir/helper/core_classes/pusher.dart';
import 'package:asshir/helper/custom_widgets/app_bar.dart';
import 'package:asshir/helper/custom_widgets/btns.dart';
import 'package:asshir/helper/custom_widgets/text_form_fields.dart';
import 'package:asshir/screens/orders/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helper/custom_widgets/images_container.dart';

class HomeView extends StatefulWidget {
  final String? userType;
  const HomeView({Key? key, this.userType}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool  isNext=false;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context, "الخدمات حاضر المميزة" ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 30,),
            Container(
              child: Stack(
                children: [
                  Container(
                    color: AppTheme.primaryColor,
                      margin: EdgeInsets.all(10),
                      height: 200,
                      child: Opacity(
                        opacity: 0.5,
                        child: Image.asset('assets/images/home_img.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                  Positioned(
                    top: 30,
                    bottom: 20,
                    right: 30,
                    child: Wrap(
                      direction: Axis.vertical,
                      children:const [
                      Text('كل ما تحتاجه',style: TextStyle(color: Colors.white),),
                      Text('تحتاجه هنا مع',style: TextStyle(color: Colors.white),),
                      Text('خدمة 24 ساعة',style: TextStyle(color: Colors.white),),

                    ],),
                  )
                ],
              ),
            ),
            Container(
             // height: 15,
              padding: EdgeInsets.only(right: 20,top: 20),
              child:Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                     SvgPicture.asset('assets/images/clock.svg',
                     width: 60,height: 60,),
                        Column(
                          children: [
                             Text('عماله منزلية بالساعة',style: AppTheme.labelTextFieldStyle,),
                            Text('توفير عماله بنظام الساعات',style: AppTheme.subTitleStyle,),
                            Text('وبحسب الوقت الماسب لكم',style: AppTheme.subTitleStyle,)
                          ],
                        )
                      ],
                    ),
                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    child:
                  PublicButton(
                      txt: 'اطلب الخدمه الان',
                      onTap: () {},
                      height: 35,
                      color: AppTheme.primaryColor))
                ],
                ),
              ),
            ),
            Container(
              // height: 15,
              padding: EdgeInsets.only(right: 20,top: 20),
              child:Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/clock.svg',
                          width: 60,height: 60,),
                        Column(
                          children: [
                            Text('عماله منزلية بالساعة',style: AppTheme.labelTextFieldStyle,),
                            Text('توفير عماله بنظام الساعات',style: AppTheme.subTitleStyle,),
                            Text('وبحسب الوقت الماسب لكم',style: AppTheme.subTitleStyle,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                        width: 200,
                        child:
                        PublicButton(
                            txt: 'اطلب الخدمه الان',
                            onTap: () {},
                            height: 35,
                            color: AppTheme.primaryColor))
                  ],
                ),
              ),
            ),
            
            SizedBox(
              height: 40,
            ),
            Text('كن علي تواصل معنا',style: AppTheme.labelTextFieldStyle,),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/call.svg',width: 40,height: 40,),
                SizedBox(width: 10,),
                SvgPicture.asset('assets/images/twitter.svg',width: 40,height: 40,),
                SizedBox(width: 10,),
                SvgPicture.asset('assets/images/whatsapp.svg',width: 40,height: 40,),
                SizedBox(width: 10,),
                SvgPicture.asset('assets/images/tiktok.svg',width: 40,height: 40,),
                SizedBox(width: 10,),
                SvgPicture.asset('assets/images/insta.svg',width: 40,height: 40,)
              ],
            )



          ],
        )
      ),
      // floatingActionButton:InkWell(
      //   onTap: ()=>push(OrdersView()),
      //   child: Container(
      //     width: 75,
      //     height: 75,
      //     child: Card(
      //       elevation: 10,
      //       color: AppTheme.white,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(50.0),
      //       ),
      //       child: Card(
      //         elevation: 10,
      //         child: Icon(Icons.call,color: Colors.white,),
      //         color: AppTheme.darkPrimaryColor,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(50.0),
      //         ),
      //       ),
      //     ),
      //
      //   ),
      // ),
      drawer: Drawer(),
    );
  }



}
