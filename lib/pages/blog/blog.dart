
import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/pages/blog/assets.dart';
import 'package:project/pages/blog/sections/statusSection.dart';
import 'package:project/pages/blog/sections/widgets/circularButton.dart';
import 'package:project/pages/blog/sections/widgets/postCard.dart';
import 'package:project/pages/homepage/homeScreen.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          elevation: 0,
          title: Row(
            children: [
              IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
              Text(
                "BLOG",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
         
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
          children: [
            SizedBox(
              height: 10,
            ),
            StatusSection(),
            thickDivider,
            PostCard(
              name: "Hrithik",
              avatar: hrithik,
              publishedAt: "5h",
              postData:
                  "Mental illness is a pressing issue for many people. Though our world is slowly becoming more aware and understanding of it, some groups still consider it shameful and sweep it under the rug to be ignored or suppressed — treating it far more lightly than it should be, inevitably making it worse. There is a broad spectrum of mental illnesses that take on unique forms in everyone who has them. As someone who struggles with depression and an anxiety disorder I wanted to give focus to how those manifest in me. Though I’ve dealt with these for most of my life, I got my first major panic attack my senior year of high school when I went through a traumatic event. After that they became more chronic day to day. Panic attacks are very common, many people will have at least 1 in their life but can also become more frequent for others. Due to the lack of awareness and understanding when people get them for the first time they can think they are having a heart attack since your heart beats so vigorously while it's happening. For me, they can be brought on by many different things; work, relationships, insecurities, medications, events, too much caffeine, etc. They can also appear different for me given my setting or worry. These images are self-portraits taken during my panic attacks over the past few months. My aim is to show a vulnerable moment most people would not see, give a glimpse as to what it is like, as well as create a reflection for myself to see what it looks like outside of my head when Im in these states",
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            PostCard(
              name: "John Abraham",
              avatar: johnabr,
              publishedAt: "1 day ago",
              postData:
                  "James Wee has always lived with anxiety and suffered bouts of depression as a teenager.I've always been an anxious child, shares James, now 30. I was a high-achieving and extroverted kid, so it was easy to pretend that everything was fine, at least on the surface.At age 21, James started cognitive behavioural therapy after a major anxiety attack. His therapist also suggested he take up an activity that he could do on his own, and that would get him outside.Evidence has shown that physical activity may help prevent or treat anxiety. A 2020 study from the book Physical Exercise for Human Health suggests brief periods of exercise can significantly help relieve feelings of uneasiness, thanks to a combination of psychological and biological factors.James, who advocates a slow-and-steady-wins-the-race approach to overcome anxiety, chose running. He built his confidence slowly, planning short runs close to home and in the early hours of the day to avoid crowds. Today, James is a personal trainer for endurance running. Change doesn't happen overnight, but it eventually happens if you persist and give yourself time. Things can get better.",
              showBlueTick: true,
              likeCount: "1K",
              shareCount: "2K",
              commentCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              name: "Dulquer",
              avatar: dulquer,
              publishedAt: "2 day ago",
              postData:
                  "My name is Kellene Diana and I used to struggle with anxiety and depression. Nobody understood or wanted to understand; in fact they called me names and passed judgment before they even knew what I was going through. It made me so afraid to speak up and speak out about it that it completely silenced me for years. For a very long time I was full of anxiety, depression, fear, anger, self-doubt, low self-esteem and alcohol.  Everything was hurting me emotionally, mentally and physically!But, as scary as it was, I took a stand and put up a serious fight for my soul, my health, my spirit and everything that matters in this life! I stopped caring about what people thought and started caring more about getting better.I got so tired of the panic attacks, the constant tears, the “what ifs,” the fears, the lack of self-confidence and the hangovers!  I knew in my heart that there was so much more for me! So, one day I made a conscious decision and I said out loud “ENOUGH IS ENOUGH”! It is time to fight for the Kellene that I knew was on the inside waiting for an invitation to show her greatness. First, I acknowledged my struggles, and then I immediately made an appointment to see a therapist. I started journaling, reading stories of hope and triumph on the ADAA‘s website, praying, meditating, exercising and speaking life and love over myself every SINGLE day! Because of my commitment to my healing, nowadays when I look in the mirror, I feel a different kind of love for myself that goes far beyond my outfit, my red lipstick and my mascara! I now see my will, determination, resilience, and that I’m a fighter, a survivor, a queen, a warrior, a healer, a leader and a person who stopped using circumstances as an excuse to stay stuck!The more I started to heal the more and more I saw my potential and what I was capable of and due to my intentional fight,  hard work and my determination to be my greatest, I am proud to say that I am now the CEO of my own company, a Best Selling Author and a Survivor of Mental Illness!This story is to simply show you that if I can beat anxiety and depression and all the other things that I have battled that tried to take me out, so can you! No more excuses…no more waiting! It is time to give yourself that invitation to step into your greatness just like I did. Now, I'm no therapist and nor do I claim to have all the answers but one thing that I do know is that whatever dream is in your heart, whatever goal you need to achieve, with a fight, determination and a solid non-judgmental support system….you too can triumph over anxiety and depression. Click here to join my free Facebook Community called “I BEAT ANXIETY DEPRESSION, now what?”  It is a very engaged group of warriors who are ready to heal and share their journey and their story for ongoing healing and support! ",
              showBlueTick: true,
              likeCount: "4K",
              shareCount: "5K",
              commentCount: "1.5k",
            ),
            thickDivider,
            PostCard(
              name: "sushanth",
              avatar: sushant,
              publishedAt: "2 day ago",
              postData:
            "Mental illness is a pressing issue for many people. Though our world is slowly becoming more aware and understanding of it, some groups still consider it shameful and sweep it under the rug to be ignored or suppressed — treating it far more lightly than it should be, inevitably making it worse. There is a broad spectrum of mental illnesses that take on unique forms in everyone who has them. As someone who struggles with depression and an anxiety disorder I wanted to give focus to how those manifest in me. Though I’ve dealt with these for most of my life, I got my first major panic attack my senior year of high school when I went through a traumatic event. After that they became more chronic day to day. Panic attacks are very common, many people will have at least 1 in their life but can also become more frequent for others. Due to the lack of awareness and understanding when people get them for the first time they can think they are having a heart attack since your heart beats so vigorously while it's happening. For me, they can be brought on by many different things; work, relationships, insecurities, medications, events, too much caffeine, etc. They can also appear different for me given my setting or worry. These images are self-portraits taken during my panic attacks over the past few months. My aim is to show a vulnerable moment most people would not see, give a glimpse as to what it is like, as well as create a reflection for myself to see what it looks like outside of my head when Im in these states",
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "2K",
              commentCount: "5k",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
