import 'package:flutter/material.dart';

class Mission1Page extends StatefulWidget {
  const Mission1Page({super.key});

  @override
  State<Mission1Page> createState() => _Mission1PageState();
}

class _Mission1PageState extends State<Mission1Page> {
  // button condition
  bool buttonColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mission 1',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.yellow[400],
      ),
      body: Stack(
        children: [
          // Dimmension
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.yellow.shade100],
                  // start dan end
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  // Banner
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        child: Image.asset(
                          'images/iu_banner.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  // Photo List
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // photo 1
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/iu_banner.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 2
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/iu_banner.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 3
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/iu_banner.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 4
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/iu_banner.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Text
                  const Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Text("Data",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        // scrollview
                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.all(8),
                            child: Text(
                                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique eget sem vel dignissim. Praesent sit amet mollis lectus. Praesent rhoncus scelerisque orci, sed accumsan justo commodo eu. Vestibulum malesuada leo non magna vehicula, quis facilisis dolor interdum. Nulla facilisi. Sed venenatis mollis elit, eget sagittis sem efficitur at. Quisque sed porta eros. Mauris ac elit hendrerit, dapibus magna in, ultrices massa. Suspendisse placerat tellus eget hendrerit vehicula. In nec neque at mauris blandit euismod. Fusce mi ligula, varius aliquam dictum a, accumsan ac quam. Integer hendrerit, felis vel dictum mollis, nibh nisi aliquam ipsum, sed iaculis ex eros id enim. Pellentesque nulla massa, ultricies et metus a, vehicula egestas purus. Suspendisse luctus imperdiet tellus a placerat.

Suspendisse ultricies, felis eu tempus dignissim, lorem erat venenatis orci, ut consectetur tortor arcu vitae risus. Sed luctus convallis tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vitae convallis orci. Integer dignissim condimentum libero vitae porttitor. Vivamus nec fermentum metus, nec eleifend lacus. Ut egestas fermentum sem, tincidunt dignissim urna hendrerit eu. Integer et sapien sed tortor porttitor rhoncus eu nec lectus. Fusce faucibus sem molestie convallis facilisis. Vestibulum tincidunt justo diam, vel laoreet nibh molestie ultrices. Quisque maximus, nisi id porttitor finibus, elit lectus commodo sem, sit amet consequat lorem velit id risus. Nulla facilisi. Sed nec tellus rhoncus, pellentesque felis in, elementum urna. Integer malesuada sollicitudin erat, id tincidunt augue efficitur interdum.

Praesent quis ornare dui. Suspendisse interdum, sem sit amet pulvinar volutpat, augue leo imperdiet felis, at congue lorem eros vitae nulla. Sed eleifend rutrum dignissim. Fusce venenatis sed magna ac accumsan. Etiam luctus nulla porta vehicula dictum. Vivamus risus neque, aliquam luctus ligula et, iaculis blandit ipsum. Curabitur vitae felis at mauris placerat bibendum. Donec nulla orci, efficitur et cursus sit amet, viverra vel erat. Sed neque tellus, varius vel nulla in, ornare scelerisque lorem. Aenean nec accumsan odio.

Phasellus ultricies quam nec ligula fringilla sagittis. Integer venenatis orci eget faucibus elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam nisi mauris, ullamcorper a scelerisque non, tincidunt a ex. Fusce rhoncus scelerisque magna, quis accumsan diam elementum id. Nullam aliquam eleifend suscipit. Ut ac nunc ultrices, tristique mauris et, tincidunt urna. Nam at rhoncus nunc. Ut pellentesque sapien dui, vel lacinia felis cursus eget. Proin commodo est nunc, non tempor ex tempus vehicula.

Vivamus tincidunt neque ex, nec pulvinar diam finibus ac. Nunc vitae ipsum lectus. Donec condimentum nec nisl nec suscipit. Duis sit amet erat sollicitudin arcu consequat lobortis at varius mauris. Fusce bibendum fringilla vulputate. Mauris blandit, leo in consectetur fringilla, dui ipsum commodo orci, ut pulvinar purus ex at ante. Aenean sodales interdum est, nec imperdiet metus porta ac. Donec a convallis nisl, at consectetur velit. Donec ullamcorper, ante a gravida gravida, sem nisi euismod risus, ac auctor sem felis at erat. Nulla tristique, lorem in vehicula pretium, neque nisl porta lectus, sed gravida odio ligula eget ante.''',
                                textAlign: TextAlign.justify),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // button
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(onPressed: () {
                  setState(() {
                    buttonColor = !buttonColor;
                  });
                },
                backgroundColor: Colors.white,
                shape: CircleBorder(),
                child: Icon(Icons.favorite, color: buttonColor ? Colors.red : Colors.grey,),
                ),
          )
        ],
      ),
    );
  }
}
