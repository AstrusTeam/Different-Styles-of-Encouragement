//
//  code.swift
//  AlarmAppTest3
//
//  Created by 池田昂平 on 2019/11/29.
//  Copyright © 2019 Kohei Ikeda. All rights reserved.
//

import UIKit

class myClass {
    
    func myFunction() {
        let text = """
        Having been raised by Japanese parents and having lived in the United States, I couldn't help noticing the difference in how American and Japanese parents praise or encourage their children. I felt like all my American friends were always showered with elaborate compliments and encouragement every day for minor achievements, while I got little or no praise even for significant academic success.
            For example, every time my friends and I took home our report cards, my best friend would get a big hug and encouraging comments from her parents, such as, “That's great!" or "I'm so proud of you." So I had assumed she was getting straight A's on her report card, but it turned out her grades. were only B's. But because her parents frequently recognized and praised her efforts, she always felt confident about herself. Even today, as an adult, she is ambitious and never afraid to try new things.
             In contrast, my parents would always say, "You should have studied harder," or "You have to do better next time,” regardless of what grades I got. Even if I got A's, they would always criticize me for the B's. Why couldn't they give me guidance or show me affection instead? Didn't they love me? I always felt like I had to work harder regardless of what level I was at. I still feel that way today. And while this upbringing has enabled me to become a diligent, hard-working adult, I'm always reluctant to try new things because I lack self-esteem.
            I'm not saying that children should constantly be complimented. Nobody is perfect and everyone can learn from constructive criticism. But again, I noticed distinct differences in how Americans and Japanese people encourage others to try harder.
            My Japanese parents would resort to threats, such as, "If you don't study hard, you'll end up jobless and homeless." Meanwhile, my best friend's mother would say, "If you spent 30 minutes a night solving math problems, you could get an A in math.' In other words, she would recommend a reachable goal in a positive light as something to look forward to. So my friend would become eager to study harder, feeling excited about her next exam. Meanwhile, I would study to fulfill a sense of obligation to succeed.
            As you can see, there is a major difference between the American and Japanese styles of communication. The American way is to first praise the child's strengths, and then suggest ways to improve the child's weaknesses. For Americans, praise is like a greeting, and a way of ensuring smooth communication. The Japanese way is to criticize or scold a child to make them work harder. The Japanese tend not to praise their children, because they worry that too much praise may make a child conceited. It's not a matter of which style is right or wrong. The two styles are simply different.
            These different communication styles are used for adults, too. When I was working as a volunteer administrator in New York City, I attended a workshop on volunteer administration. The  instructor said to me, "Always give a volunteer four positive comments before you give one criticism." For example,"I appreciate your commitment, cooperation, hard work, and leadership, but we need you to be more punctual." The instructor said that people will accept criticism a lot more easily if they feel that their efforts are acknowledged and appreciated. They won't feel completely rejected. I tried this technique on the 200 volunteers I was managing, and it was effective. They felt appreciated, and their work quality eventually improved. It also enabled us to communicate smoothly.
            In fact, my American boss communicated with me in a subtle way. She once told me that I would be perfect at my job if I learned how to write grants, pointing out the one skill I lacked. Her comment made me feel that she valued me as a person and recognized my strengths in other areas, It also made me want to meet her expectations. That one comment strengthened our bond. If she had said, “You're never going to be a good employee unless you learn to do this," I would have felt rejected.
            On the other hand, whenever I worked at Japanese companies, my Japanese bosses would generally focus on pointing out my weaknesses. They would rarely mention my strengths. This communication style was difficult for me emotionally, but it pushed me to work hard all the time and ultimately helped me achieve my goals.
            These two styles of communication both have their advantages and disadvantages. During my 10 years as a teacher, I have learned that each person responds differently to different styles of encouragement. Some people may need encouragement to give them motivation and confidence because they feel inferior. Other people may get overly confident from too much encouragement, and may stop trying.
            I suggest that an appropriate style be adopted for each individual with consideration to cultural differences, because there is no formula that fits everyone. And I think it's essential that parents and bosses know the personality of the person they are criticizing, and choose the right method to help the individual's personal and professional growth.
            Having been raised by Japanese parents and having lived in the United States, I couldn't help noticing the difference in how American and Japanese parents praise or encourage their children. I felt like all my American friends were always showered with elaborate compliments and encouragement every day for minor achievements, while I got little or no praise even for significant academic success.
        For example, every time my friends and I took home our report cards, my best friend would get a big hug and encouraging comments from her parents, such as, “That's great!" or "I'm so proud of you." So I had assumed she was getting straight A's on her report card, but it turned out her grades. were only B's. But because her parents frequently recognized and praised her efforts, she always felt confident about herself. Even today, as an adult, she is ambitious and never afraid to try new things.
        """

        let importantWords = ["elaborate", "compliments","achievements", "assumed", "frequently",  "ambitious", "regardless of", "criticize", "affection", "upbringing", "diligent", "reluctant", "lack", "self-esteem", "constantly", "complimented", "constructive criticism", "resort", "threats", "Meanwhile", "reachable", "eager", "obligation", "weaknesses", "conceited", "administration", "commitment", "cooperation", "punctual", "appreciate", "criticism", "acknowledged", "effective", "eventually improved", "subtle", "grants", "lacked", "expectations", "strengthened", "emotionally", "ultimately", "inferior", "overly", "appropriate", "consideration", "formula", "essential"]


        let japanese = ["巧みな","褒め言葉","達成","想定","しばしば","意欲的","関係なく","非難する","愛情","教育","勤勉な","自信がない","なかった","自尊心","常に", "褒める", "建設的な批判","頼る", "脅す", "一方で","到達可能な", "〜したがる",  "義務","弱み","うぬぼれる","管理","参加","協力","時間を厳守する","評価する","批判","認めている","効果的","最終的に改善した","微妙な(ポジティブ)", "譲渡証書", "不足", "期待", "強まる", "感情的に", "最終的に","劣っている","過度に","適切な","考慮","決まり文句","必須"]


        print("\(importantWords.count) *** \(japanese.count)")


        var newEnglish = text



        for num in 0...1000 {
            if let range = newEnglish.range(of: importantWords[num%46]) {
                
                let textCount = importantWords[num%46].count
                let space = "    "
                var newSpace = ""
                
                for _ in 1...textCount {
                    newSpace += space
                }
                
                let firstString = importantWords[num%46].prefix(1)
                
                
                newEnglish.replaceSubrange(range, with: "( \(num%46 + 1). \(newSpace) \(japanese[num%46]) [\(firstString)-])")
            }
        }
        
        newEnglish += "\n\n\n\n\n"
        
        for ubn in 0...46 {
            let myText = "\(ubn+1). \(importantWords[ubn]) :"
            let myNum = 40-myText.count
            var mySpace = ""
            
            for _ in 0...myNum {
                mySpace += " "
            }
            
            
            newEnglish += myText + mySpace + japanese[ubn] + "\n"
        }
        
        print(newEnglish)
    }
}
