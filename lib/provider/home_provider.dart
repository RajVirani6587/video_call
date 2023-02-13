import 'package:flutter/material.dart';

import '../model/video_model.dart';

class Home_Provider extends ChangeNotifier{

  bool isplay = false ;
  int con =0;

  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }

   void image(int i)
   {
     con = i;
     notifyListeners();
   }

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }

  var date =DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2){
    t1 = set_2;
    notifyListeners();
  }

  List<Modeldata2> i1 = [
    Modeldata2(post: "assets/post/Screenshot_20230211_132025_Chamet.jpg",real: "assets/video/v1.mp4",video:"assets/video/v1.mp4",                                                                                     Image2: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",                                        Name2:"hoy neha",),
    Modeldata2(post: "assets/post/Screenshot_20230211_132033_Chamet.jpg",real: "assets/video/original-A0413AE0-AFF7-4E3F-94F5-57A1B7FF80E4.mp4",video:"assets/video/original-A0413AE0-AFF7-4E3F-94F5-57A1B7FF80E4.mp4",                                      Image2: "assets/image/8an9xwf43m4z1e1450cg41bffn2sh1p8.jpg",                                        Name2:"misty"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132038_Chamet.jpg",real: "assets/video/original-DB2007D4-B4B1-45FA-A5B5-25E38520E93D.mp4",    video:"assets/video/original-C274F953-555D-4735-8EA3-55E4F54F034D.mp4",                                      Image2: "assets/image/57g2xvv02tj55setg96fk6rzbg1q2b1h.jpg",                                        Name2: "sTella"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132043_Chamet.jpg",real: "assets/video/original-DBA6FBCC-9212-4109-9A53-076DB4675E44.mp4",video:"assets/video/original-DB2007D4-B4B1-45FA-A5B5-25E38520E93D.mp4",                                      Image2: "assets/image/6493__user-1659503800.jpg",                                                   Name2: "Riya 6635"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132053_Chamet.jpg",real: "assets/video/original-DB2007D4-B4B1-45FA-A5B5-25E38520E93D.mp4",video:"assets/video/original-DBA6FBCC-9212-4109-9A53-076DB4675E44.mp4",                                      Image2: "assets/image/GcMA3gIlhkhj8w8g47yw8zWVgJC18YwU4Ai_eWoWmjgftIpCg8Dx2hCMnLGQ1MdOYw.jpg",      Name2: "Fly"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132114_Chamet.jpg",real: "assets/video/processed-3ECB2082-9509-455F-8CD2-3E506E5C4A2A-E12A764E-EEA6-4880-B86F-9770794DAB66.mp4"    ,video:"assets/video/processed-3ECB2082-9509-455F-8CD2-3E506E5C4A2A-E12A764E-EEA6-4880-B86F-9770794DAB66.mp4",Image2: "assets/image/images.jpg",                                                                  Name2: "Sonia"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132141_Chamet.jpg",real: "assets/video/processed-A37F1395-497E-4924-B0D2-7C99EDD0C970-68BB0E54-2230-4A34-8EBD-87977616FCE6.mp4",video:"assets/video/processed-5D067031-BC51-4B5F-B1DC-A4BE5865A1B4-3D7FD377-946A-4887-BBD0-B19322EDCC61.mp4",Image2: "assets/image/images (1).jpg",                                                              Name2: "vanshu"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132211_Chamet.jpg",real: "assets/video/processed-5D067031-BC51-4B5F-B1DC-A4BE5865A1B4-3D7FD377-946A-4887-BBD0-B19322EDCC61.mp4",video:"assets/video/processed-A37F1395-497E-4924-B0D2-7C99EDD0C970-68BB0E54-2230-4A34-8EBD-87977616FCE6.mp4",Image2: "assets/image/images (2).jpg" ,                                                             Name2:"isshhhh"),
    Modeldata2(post: "assets/post/Screenshot_20230211_132225_Chamet.jpg",real: "assets/video/processed-CFC64ED4-9BFE-4B93-B89E-78CB7545C319-A307ED61-26E9-43DF-858B-81D196D4C42F.mp4",    video:"assets/video/processed-CFC64ED4-9BFE-4B93-B89E-78CB7545C319-A307ED61-26E9-43DF-858B-81D196D4C42F.mp4",Image2: "assets/image/mumbai-friendship-friends-tarqcubbn4ids4uy3vcc31sxpjntetc2.jpg",              Name2: "angel7303"),
    Modeldata2(post: "assets/post/nida-24.webp",                         real: "assets/video/processed-3ECB2082-9509-455F-8CD2-3E506E5C4A2A-E12A764E-EEA6-4880-B86F-9770794DAB66.mp4",video:"assets/video/processed-3ECB2082-9509-455F-8CD2-3E506E5C4A2A-E12A764E-EEA6-4880-B86F-9770794DAB66.mp4",Image2: "assets/image/sonipat-call-girls-hyderabad-call-girls-ebg2m3orn3ba1sajgl8ae1lgheewblni.jpg",Name2: "Rossy rose"),
    Modeldata2(post: "assets/post/i5.jpg",real: "assets/video/v0.mp4",video: "assets/video/v0.mp4",Image2: "assets/image/i1.jpg",   Name2: "Olivia"),
    Modeldata2(post: "assets/post/i8.jpg",real: "assets/video/v2.mp4",video: "assets/video/v2.mp4",Image2: "assets/image/i2.jpg",   Name2: "Emma"),
    Modeldata2(post: "assets/post/i9.jpg",real: "assets/video/v3.mp4",video: "assets/video/v3.mp4",Image2: "assets/image/i3.jpg",   Name2: "Charlotte"),
    Modeldata2(post: "assets/post/i2.jpg",real: "assets/video/v4.mp4",video: "assets/video/v4.mp4",Image2: "assets/image/i4.jpg",   Name2: "Amelia"),
    Modeldata2(post: "assets/post/i4.jpg",real: "assets/video/v5.mp4",video: "assets/video/v5.mp4",Image2: "assets/image/i5.jpg"    ,Name2:"Ava"),
    Modeldata2(post: "assets/post/i3.jpg",real: "assets/video/v6.mp4",video: "assets/video/v6.mp4",Image2: "assets/image/i6.jpg",   Name2: "Sophia"),
    Modeldata2(post: "assets/post/i1.jpg",real: "assets/video/v7.mp4",video: "assets/video/v7.mp4",Image2: "assets/image/i7.jpg",   Name2: "Isabella"),
    Modeldata2(post: "assets/post/i6.jpg",real: "assets/video/v8.mp4",video: "assets/video/v8.mp4",Image2: "assets/image/i8.jpg",   Name2: "Mia"),
    Modeldata2(post: "assets/post/i7.jpg",real: "assets/video/v9.mp4",video: "assets/video/v9.mp4",Image2: "assets/image/i9.jpg",   Name2: "Evelyn"),
    Modeldata2(post: "assets/post/i5.jpg",real: "assets/video/v10.mp4",video: "assets/video/v10.mp4",Image2: "assets/image/i10.jpg",Name2: "Harper"),
    Modeldata2(post: "assets/post/i10.jpg",real: "assets/video/v11.mp4",video: "assets/video/v11.mp4",Image2: "assets/image/i11.jpg",Name2: "Luna"),
    Modeldata2(post: "assets/post/i19.jpg",real: "assets/video/v12.mp4",video: "assets/video/v12.mp4",Image2: "assets/image/i12.jpg",Name2: "Camila"),
    Modeldata2(post: "assets/post/i18.jpg",real: "assets/video/v13.mp4",video: "assets/video/v13.mp4",Image2: "assets/image/i13.jpg",Name2: "Gianna"),
    Modeldata2(post: "assets/post/i17.jpg",real: "assets/video/v14.mp4",video: "assets/video/v14.mp4",Image2: "assets/image/i14.jpg",Name2: "Elizabeth"),
    Modeldata2(post: "assets/post/i16.jpg",real: "assets/video/v15.mp4",video: "assets/video/v15.mp4",Image2: "assets/image/i15.jpg",Name2: "Eleanor"),
    Modeldata2(post: "assets/post/i15.jpg",real: "assets/video/v16.mp4",video: "assets/video/v16.mp4",Image2: "assets/image/i16.jpg",Name2: "Ella"),
    Modeldata2(post: "assets/post/i14.jpg",real: "assets/video/v17.mp4",video: "assets/video/v17.mp4",Image2: "assets/image/i17.jpg",Name2: "Abigail"),
    Modeldata2(post: "assets/post/i13.jpg",real: "assets/video/v18.mp4",video: "assets/video/v18.mp4",Image2: "assets/image/i18.jpg",Name2: "Sofia"),
    Modeldata2(post: "assets/post/i12.jpg",real: "assets/video/v19.mp4",video: "assets/video/v19.mp4",Image2: "assets/image/i19.jpg",Name2: "Avery"),
    Modeldata2(post: "assets/post/i11.jpg",real: "assets/video/v20.mp4",video: "assets/video/v20.mp4",Image2: "assets/image/i20.jpg",Name2: "Scarlett"),
    Modeldata2(post: "assets/post/i20.jpg",real: "assets/video/v21.mp4",video: "assets/video/v21.mp4",Image2: "assets/image/i21.jpg",Name2: "Emily"),
    Modeldata2(post: "assets/post/i29.jpg",real: "assets/video/v22.mp4",video: "assets/video/v22.mp4",Image2: "assets/image/i22.jpg",Name2: "Aria"),
    Modeldata2(post: "assets/post/i28.jpg",real: "assets/video/v23.mp4",video: "assets/video/v23.mp4",Image2: "assets/image/i23.jpg",Name2: "Penelope"),
    Modeldata2(post: "assets/post/i27.jpg",real: "assets/video/v24.mp4",video: "assets/video/v24.mp4",Image2: "assets/image/i24.jpg",Name2: "Chloe"),
    Modeldata2(post: "assets/post/i26.jpg",real: "assets/video/v25.mp4",video: "assets/video/v25.mp4",Image2: "assets/image/i25.jpg",Name2: "Layla"),
    Modeldata2(post: "assets/post/i25.jpg",real: "assets/video/v26.mp4",video: "assets/video/v26.mp4",Image2: "assets/image/i26.jpg",Name2: "Mila"),
    Modeldata2(post: "assets/post/i24.jpg",real: "assets/video/v27.mp4",video: "assets/video/v27.mp4",Image2: "assets/image/i27.jpg",Name2: "Nora"),
    Modeldata2(post: "assets/post/i23.jpg",real: "assets/video/v28.mp4",video: "assets/video/v28.mp4",Image2: "assets/image/i28.jpg",Name2: "Hazel"),
    Modeldata2(post: "assets/post/i22.jpg",real: "assets/video/v29.mp4",video: "assets/video/v29.mp4",Image2: "assets/image/i29.jpg",Name2: "Madison"),
    Modeldata2(post: "assets/post/i21.jpg",real: "assets/video/v30.mp4",video: "assets/video/v30.mp4",Image2: "assets/image/i30.jpg",Name2: "Ellie"),
    Modeldata2(post: "assets/post/i30.jpg",real: "assets/video/v31.mp4",video: "assets/video/v31.mp4",Image2: "assets/image/i31.jpg",Name2: "Lily"),
    Modeldata2(post: "assets/post/i39.jpg",real: "assets/video/v32.mp4",video: "assets/video/v32.mp4",Image2: "assets/image/i32.jpg",Name2: "Nova"),
    Modeldata2(post: "assets/post/i38.jpg",real: "assets/video/v33.mp4",video: "assets/video/v33.mp4",Image2: "assets/image/i33.jpg",Name2: "Isla"),
    Modeldata2(post: "assets/post/i37.jpg",real: "assets/video/v34.mp4",video: "assets/video/v34.mp4",Image2: "assets/image/i34.jpg",Name2: "Grace"),
    Modeldata2(post: "assets/post/i36.jpg",real: "assets/video/v35.mp4",video: "assets/video/v35.mp4",Image2: "assets/image/i35.jpg",Name2: "Violet"),
    Modeldata2(post: "assets/post/i35.jpg",real: "assets/video/v36.mp4",video: "assets/video/v36.mp4",Image2: "assets/image/i36.jpg",Name2: "Aurora"),
    Modeldata2(post: "assets/post/i34.jpg",real: "assets/video/v37.mp4",video: "assets/video/v37.mp4",Image2: "assets/image/i37.jpg",Name2: "Riley"),
    Modeldata2(post: "assets/post/i33.jpg",real: "assets/video/v38.mp4",video: "assets/video/v38.mp4",Image2: "assets/image/i38.jpg",Name2: "Zoey"),
    Modeldata2(post: "assets/post/i32.jpg",real: "assets/video/v39.mp4",video: "assets/video/v39.mp4",Image2: "assets/image/i39.jpg",Name2: "Willow"),
    Modeldata2(post: "assets/post/i31.jpg",real: "assets/video/v40.mp4",video: "assets/video/v40.mp4",Image2: "assets/image/i40.jpg",Name2: "Emilia"),
    Modeldata2(post: "assets/post/i41.jpg",real: "assets/video/v41.mp4",video: "assets/video/v41.mp4",Image2: "assets/image/i41.jpg",Name2: "Victoria"),
    Modeldata2(post: "assets/post/i40.jpg",real: "assets/video/v42.mp4",video: "assets/video/v42.mp4",Image2: "assets/image/i42.jpg",Name2: "Hannah"),
  ];
  List data2 = [];
  Modeldata2?Datapickkk;
}