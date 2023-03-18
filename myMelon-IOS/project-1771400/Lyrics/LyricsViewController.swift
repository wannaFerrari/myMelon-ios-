

import UIKit
import Foundation

class LyricsViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var index = 0
    var curTitle : String?
    @IBOutlet weak var lyricsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        lyricsLabel.numberOfLines = 0
        
        super.viewDidLoad()
        titleLabel.text = curTitle
        switch curTitle {
        case "TOMBOY" :
            lyricsLabel.text = """
            "Look at you (yeah) 넌 못 감당해 날 (uh) \
            You took (umm) off hook (yah) \
            기분은 Coke like brr
            Look at my toe, 나의 ex 이름 tattoo
            I got to drink up now, 네가 싫다 해도 좋아 (ah!)
            Why are you cranky, boy?
            뭘 그리 찡그려 너
            Do you want a blond Barbie doll?
            It's not here, I'm not a doll (like this if you can)
            미친년이라 말해, what's the loss to me? Ya
            사정없이 까보라고 you'll lose to me ya
            사랑 그깟 거 따위 내 몸에 상처 하나도 어림없지
            너의 썩은 내 나는 향수나 뿌릴 바엔
            Yeah, I'm fu- tomboy
            (Uh, ah, uh)
            Yeah, I'll be the tomboy
            (Uh, ah)
            This is my attitude
            Yeah, I'll be the tomboy
            That's why
            I don't wanna play this ping pong
            I would rather film a TikTok
            Your mom raised you as a prince
            But this is queendom, right?
            I like dancing, I love my friends
            Sometimes we swear without cigarettes
            I like to eh, on drinking whiskey
            I won't change it, what the hell?
            미친 척이라 말해, what's the loss to me? Ya
            사정없이 씹으라고 you're lost to me ya
            사랑 그깟 거 따위 내 눈에 눈물 한 방울 어림없지
            너의 하찮은 말에 미소나 지을 바엔
            Yeah, I'm fu- tomboy
            (Uh, ah, uh)
            Yeah, I'll be the tomboy
            (Uh, ah)
            This is my attitude
            Yeah, I'll be the tomboy
            Said you get up?
            Uh, you get the song right
            You'll get what I mean “Tomboy”, uh
            La-la-la, la-la, la-la-la-la, la-la
            La-la-la-la, la-la-la
            (Umm, umm, you're brand new)
            La-la-la, la-la, la-la-la-la, la-la
            La-la-la-la, la-la-la
            (Three, two, one)
            It's neither man nor woman
            Man nor woman
            It's neither man nor woman
            Just me, I-dle
            It's neither man nor woman
            Man nor woman
            It's neither man nor woman
            Just me loving tomboy
            """
            
        case "Dynamite" :
            lyricsLabel.text = """
Cause I-I-I'm in the stars tonight
So watch me bring the fire and set the night alight
Shoes on, get up in the morn'
Cup of milk, let's rock and roll
King Kong, kick the drum, rolling on like a Rolling Stone
Sing song when I'm walking home
Jump up to the top, LeBron
Ding dong, call me on my phone
Ice tea and a game of ping pong, huh
This is getting heavy
Can you hear the bass boom? I'm ready (woo hoo)
Life is sweet as honey
Yeah, this beat cha-ching like money, huh
Disco overload, I'm into that, I'm good to go
I'm diamond, you know I glow up
Hey, so let's go
'Cause I-I-I'm in the stars tonight
So watch me bring the fire and set the night alight (hey)
Shining through the city with a little funk and soul
So I'ma light it up like dynamite, whoa oh oh
Bring a friend, join the crowd
Whoever wanna come along
Word up, talk the talk
Just move like we off the wall
Day or night, the sky's alight
So we dance to the break of dawn
Ladies and gentlemen, I got the medicine
So you should keep ya eyes on the ball, huh
This is getting heavy
Can you hear the bass boom? I'm ready (woo hoo)
Life is sweet as honey
Yeah, this beat cha-ching like money
Disco overload, I'm into that, I'm good to go
I'm diamond, you know I glow up
Let's go
'Cause I-I-I'm in the stars tonight
So watch me bring the fire and set the night alight (hey)
Shining through the city with a little funk and soul
So I'ma light it up like dynamite, whoa oh oh
Dy-na-na-na, na-na, na-na-na, na-na-na, life is dynamite
Dy-na-na-na, na-na, na-na-na, na-na-na, life is dynamite
Shining through the city with a little funk and soul
So I'ma light it up like dynamite, whoa oh oh
Dy-na-na-na, na-na, na-na, ayy
Dy-na-na-na, na-na, na-na, ayy
Dy-na-na-na, na-na, na-na, ayy
Light it up like dynamite
Dy-na-na-na, na-na, na-na, ayy
Dy-na-na-na, na-na, na-na, ayy
Dy-na-na-na, na-na, na-na, ayy
Light it up like dynamite
'Cause I-I-I'm in the stars tonight
So watch me bring the fire and set the night alight
Shining through the city with a little funk and soul
So I'ma light it up like dynamite (this is ah)
'Cause I-I-I'm in the stars tonight
So watch me bring the fire and set the night alight (alight, oh)
Shining through the city with a little funk and soul
So I'ma light it up like dynamite, whoa (light it up like dynamite)
Dy-na-na-na, na-na, na-na-na, na-na-na, life is dynamite
Dy-na-na-na, na-na, na-na-na, na-na-na, life is dynamite
Shining through the city with a little funk and soul
So I'ma light it up like dynamite, whoa oh oh
"""
        case "Permission to Dance" :
            lyricsLabel.text = """
It's the thought of being young
When your heart's just like a drum
Beating louder with no way to guard it
When it all seems like it's wrong
Just sing along to Elton John
And to that feeling, we're just getting started
When the nights get colder
And the rhythms got you falling behind
Just dream about that moment
When you look yourself right in the eye, eye, eye
Then you say
I wanna dance, the music's got me going
Ain't nothing that can stop how we move, yeah
Let's break our plans and live just like we're golden
And roll in like we're dancing fools
We don't need to worry
'Cause when we fall, we know how to land
Don't need to talk the talk, just walk the walk tonight
'Cause we don't need permission to dance
There's always something that's standing in the way
But if you don't let it faze ya, you'll know just how to break
Just keep the right vibe, yeah, 'cause there's no looking back
There ain't no one to prove, we don't got this on lock, yeah
The wait is over
The time is now, so let's do it right
Yeah, we'll keep going
And stay up until we see the sunrise
And we'll say
I wanna dance, the music's got me going
Ain't nothing that can stop how we move, yeah
Let's break our plans and live just like we're golden
And roll in like we're dancing fools
We don't need to worry
'Cause when we fall, we know how to land
Don't need to talk the talk, just walk the walk tonight
'Cause we don't need permission to dance
Da-na-na-na-na-na-na, da-na-na-na-na-na-na
Da-na-na-na-na-na-na
No, we don't need permission to dance
Da-na-na-na-na-na-na, da-na-na-na-na-na-na
Da-na-na-na-na-na-na
Well, let me show ya
That we can keep the fire alive, mmm
'Cause it's not over
Till it's over, say it one more time, say
I wanna dance, the music's got me going (the music's got me going)
Ain't nothing that can stop how we move, yeah (hey)
Let's break our plans and live just like we're golden
And roll in like we're dancing fools (like we're dancing fools)
We don't need to worry
'Cause when we fall, we know how to land (we know how to land)
Don't need to talk the talk, just walk the walk tonight
'Cause we don't need permission to dance
"""
        case "Step Back":
            lyricsLabel.text = """
You must step back 어델 어델 봐
너 감히 누구라고 날 제껴
이쯤에서 물러나고 입 닫는 게 좋을걸
아님 어디 한번 기어 올라와 보던가
널 짝사랑을 했었니? 소꿉장난처럼 어릴 때
엔간히 끼를 좀 끼를 좀 끼를 좀 네가 부렸겠니?
소싯적 추억 팔이 그리 재밌니?
내 남잔 지금 another level (level)
너 따윈 꿈도 못 꿀 level (level)
날 가진 그런 next level (level)
보다시피 another level, don't bring it to me 꺼져줘
내 거에서 손 떼 너 (step back, step back)
다시 태어나도 안될걸 (step back, step back)
착한 남자들에게 너는 독배 같은 것 (ayy)
마실수록 외로워 he's sick and tired everyday
넘지 말아 border line (step back, step back)
네가 비빌 곳이 아니야 (step back, step back)
저울질로 가린 건 (ho) 참지 못할 가벼운
네 마음일걸 he's sick and tired everyday
Ayy 그런다고 네게 되나? 들어봐 (ho! ho!)
상상보다 너 같은 애들이 많긴 많아
그러거나 말거나 세상은 너를 빼고 돌아가 (돌아가)
You gotta get a good mind
Are you looking for fun?
(재미를 또 찾니) 호의로 다가와
(이미 계산 끝나) 공해상의 보물선을 보기라도 한 듯
(막 들이대) 시작해 transaction
넌 좀 감당 못 할 level (level)
세계가 무대인 our level (level)
내 곁에서야 가능 level (level)
보다시피 another level, don't bring it to me 꺼져줘
내 거에서 손 떼 너 (step back, step back)
다시 태어나도 안될걸 (step back, step back)
착한 남자들에게 너는 독배 같은 것 (ayy)
마실수록 외로워 he's sick and tired everyday
넘지 말아 border line (step back, step back)
네가 비빌 곳이 아니야 (step back, step back)
저울질로 가린 건 (ho) 참지 못할 가벼운
네 마음일걸 he's sick and tired everyday
네 장난 같은 유혹에 흔들리지 않아 oh
사랑이란 감정을 거래하는 건 too much (ayy)
이제 그만 꺼져 돌아가 네 세계
다시는 착각은 말고
남자들 다 똑같아 내가 뜨면 시선집중
여기저기 flash 터져 찍어라 찍어라 찍어라 (pose)
상상은 너의 freedom
가지가지 하기 전에 속부터 build up
더 나가면 넌 좀 다쳐 (girls, bring it on)
Step back, step back, step back, silly girl!
The only girl who live in a dream
Step back, step back, step back, silly girl!
내 앞에서 좀 비켜줘 yeah
Don't bring it to me 꺼져줘
내 거에서 손 떼 너 (step back, step back)
다시 태어나도 안될걸 (step back, step back)
착한 남자들에게 너는 독배 같은 것 (ayy)
마실수록 외로워 he's sick and tired everyday
넘지 말아 border line (step back, step back)
네가 비빌 곳이 아니야 (step back, step back)
저울질로 가린 건 (ho) 참지 못할 가벼운
네 마음일걸 he's sick and tired everyday
"""
        case "RUN2U":
            lyricsLabel.text = """
Run!
Told you not 또 괜한 기대
겉으론 걱정해, 난 안 바뀌네
또 가끔 말을 막 해, 너무 딱해
헛소리들 나는 안 들리네, no, oh yeah
Told you, 난 so always b-day
겉으론 내 편인데 못해 이해
그 참견들은 가짜, 나는 바빠
어떻게 해도 나는 안 들리네, no, no, oh
타 버리고 파 너의 사랑은 so sunny, yeah
사라져도, 사라져도
다 버리고 파 너만 있다면 no worry, yeah
알잖아 it should be you
So I'll run to you
So I'll run to you
선을 넘는 거래도 over and over
다쳐도 괜찮아, I'll run to you
So I'll run to you
A little bit, little bit (young)
A little bit, little bit (young)
A little bit, little bit (알지 나의 style)
네가 어떤 너래도 over and over
다쳐도 괜찮아, I'll run to you
JJ! 물불 안 가리는 type (type)
I never 절대로 도도
망가질 수 없는 사이 (ooh)
알잖아, I'm not a poser
혹시라도 잘못돼도 절대 너를 탓하지 않아
그게 어디라도 wanna be there
타 버리고 파 너의 사랑은 so sunny, yeah
사라져도, 사라져도
다 버리고 파 너만 있다면 no worry, yeah
알잖아 it should be you
So I'll run to you
So I'll run to you
선을 넘는 거래도 over and over
다쳐도 괜찮아, I'll run to you
So I'll run to you
A little bit, little bit (young)
A little bit, little bit (young)
A little bit, little bit (알지 나의 style)
네가 어떤 너래도 over and over
다쳐도 괜찮아, I'll run to you
No, no, that's okay, that's okay, 누가 뭐래도
No, 괜찮아, 아플 거래도
상관없어, 멋대로 생각해도 돼
막지 못해 널 사랑하기 때문에 (ayy)
So I'll run to you (you, ooh-ooh)
So I'll run to you (whatever, whenever, baby, babe)
선을 넘는 거래도 over and over (over)
다쳐도 괜찮아, I'll run to you
So I'll run to you
A little bit, little bit (young)
A little bit, little bit (young)
A little bit, little bit (알지 나의 style)
네가 어떤 너래도 over and over
다쳐도 괜찮아, I'll run to you
"""
        case "FEARLESS":
            lyricsLabel.text = """
밤, 바바바바밤, 바바바바밤, 바바바바밤
밤, 바바바바밤, 바바바바밤, 바바바바밤
제일 높은 곳에 난 닿길 원해, 느꼈어 내 answer
내 혈관 속에 날뛰는 new wave, 내 거대한 passion
관심 없어 과거에 모두가 알고 있는 그 트러블에, huh
I'm fearless, a new bitch, new crazy, 올라가 next one
밟아줘 highway, highway
(Whoa-oh-oh-oh) 멋진 결말에 닿게
내 흉짐도 나의 일부라면
(Whoa-oh-oh-oh) 겁이 난 없지, 없지
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
Mmm-mmm-mmm-mmm, I'm fearless, huh
You should get away, get a, get a, get away
다치지 않게, 다치-다치지 않게
You should get away, get a, get a, get away
Mmm-mmm-mmm-mmm, I'm fearless, huh
밤, 바바바바밤, 바바바바밤, 바바바바밤
밤, 바바바바밤, 바바바바밤, 바바바바밤
욕심을 숨기라는 네 말들은 이상해
겸손한 연기 같은 건 더 이상 안 해
가져와 forever win 내게, ayy
가슴팍에 숫자 일 내게, ayy
내 밑으로 조아린 세계, ayy
Take the world, break it down, break it down, down
밟아줘 highway, highway
(Whoa-oh-oh-oh) 멋진 결말에 닿게
내 흉짐도 나의 일부라면
(Whoa-oh-oh-oh) 겁이 난 없지, 없지
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
Mmm-mmm-mmm-mmm, I'm fearless, huh
You should get away, get a, get a, get away
다치지 않게, 다치-다치지 않게
You should get away, get a, get a, get away
Mmm-mmm-mmm-mmm, I'm fearless, huh
밤, 바바바바밤, 바바바바밤, 바바바바밤
밤, 바바바바밤, 바바바바밤
Mmm-mmm-mmm-mmm, I'm fearless, huh
더는 없어 패배 (밤, 바바바바밤, 바바바바밤, 바바바바밤)
준비된 내 payback
Bring it 당장 내게 (밤, 바바바바밤, 바바바바밤)
Mmm-mmm-mmm-mmm, I'm fearless, huh
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
What you lookin' at? What you, what you lookin' at?
Mmm-mmm-mmm-mmm, I'm fearless, huh
You should get away, get a, get a, get away
다치지 않게, 다치-다치지 않게
You should get away, get a, get a, get away
Mmm-mmm-mmm-mmm, I'm fearless, huh
"""
        case "LOVE DIVE":
            lyricsLabel.text = """
Ooh, ooh, yeah
네가 참 궁금해 그건 너도 마찬가지 (ooh, ooh)
이거면 충분해 쫓고 쫓는 이런 놀이
참을 수 없는 이끌림과 호기심
묘한 너와 나 두고 보면 알겠지
Ooh-ooh, ooh-ooh 눈동자 아래로
Ooh-ooh, ooh-ooh 감추고 있는 거
Ooh-ooh, ooh-ooh
Yeah, it's so bad (it's so bad) it's good (it's good)
난 그 맘을 좀 봐야겠어
Narcissistic, my god, I love it
서로를 비춘 밤
아름다운 까만 눈빛 더 빠져 깊이
(넌 내게로, 난 네게로)
숨 참고 love dive
Ooh-ooh, ooh-ooh, lalalalalalala
Ooh-ooh, ooh-ooh 어서 와서 love dive
Ooh-ooh, ooh-ooh, oh, perfect sacrifice
Yeah 숨 참고 love dive
마음은 이렇게 알다가도 모르지
사랑이라는 건 한순간에 필 테니
직접 들어와 두 눈으로 확인해
내 맘 가장 깊은 데로 오면 돼
Ooh-ooh, ooh-ooh 망설일 시간은
Ooh-ooh, ooh-ooh 삼초면 되는 걸
Ooh-ooh, ooh-ooh
Yeah, it's so bad (it's so bad) it's good (it's good)
원하면 감히 뛰어들어
Narcissistic, my god, I love it
서로를 비춘 밤
아름다운 까만 눈빛 더 빠져 깊이
(넌 내게로 난 네게로)
숨 참고 love dive
Ooh-ooh, ooh-ooh, lalalalalalala
Ooh-ooh, ooh-ooh 어서 와서 love dive
Ooh-ooh, ooh-ooh, oh, perfect sacrifice
Yeah 숨 참고 love dive
숨 참고 love dive
숨 참고 love dive
숨 참고 love dive
숨 참고 love dive
Ooh-ooh, ooh-ooh, lalalalalalala
Ooh-ooh, ooh-ooh 어서 와서 love dive
Ooh-ooh, ooh-ooh, oh, perfect sacrifice
Yeah 숨 참고 love dive
"""
        case "신호등":
            lyricsLabel.text = """
이제야 목적지를 정했지만
가려한 날 막아서네
난 갈 길이 먼데
새빨간 얼굴로 화를 냈던
친구가 생각나네
이미 난 발걸음을 떼었지만
가려한 날 재촉하네
걷기도 힘든데
새파랗게 겁에 질려 도망간
친구가 뇌에 맴도네
건반처럼 생긴 도로 위
수많은 동그라미들 모두가
멈췄다 굴렀다 말은 잘 들어
그건 나도 문제가 아냐
붉은색 푸른색
그 사이 3초 그 짧은 시간
노란색 빛을 내는
저기 저 신호등이
내 머릿속을 텅 비워버려
내가 빠른 지도
느린지도 모르겠어
그저 눈앞이 샛노랄 뿐이야
솔직히 말하자면 차라리
운전대를 못 잡던 어릴 때가
더 좋았었던 것 같아
그땐 함께 온 세상을 거닐
친구가 있었으니
건반처럼 생긴 도로 위
수많은 조명들이 날 빠르게
번갈아 가며 비추고 있지만
난 아직 초짜란 말이야
붉은색 푸른색
그 사이 3초 그 짧은 시간
노란색 빛을 내는
저기 저 신호등이
내 머릿속을 텅 비워버려
내가 빠른 지도
느린지도 모르겠어
그저 눈앞이 샛노랄 뿐이야
꼬질꼬질한 사람이나
부자 곁엔 아무도 없는
삼색 조명과 이색 칠 위에
서 있어 괴롭히지 마
붉은색 푸른색
그 사이 3초 그 짧은 시간
노란색 빛을 내는
저기 저 신호등이
내 머릿속을 텅 비워버려
내가 빠른지도
느린지도 모르겠어
그저 눈앞이 샛노랄 뿐이야
"""
        case "LOVE me":

            lyricsLabel.text = """
Hey girl, where you at? (Where you at?)
대체 어디서 뭐 하는지 궁금해
기분이 너무 Bad, bad (So bad)
침대가 허전해 잠이 안 오잖아 (Yeah)
재미도 없어 TV show
너 데리고 놀던 Pretty boy
그 고민을 내게 털어놓던
너의 표정이 아직 선명해 (Ooh)
소파에 벤 니 향기가 비릿해 (Yeah)
내 몸이 자꾸 빠져 깊이, yeah
미리 알아도 난 이리
멍청하게 행동을 해버린다니까 (까, 까)
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Now I say I love you
So I love you
Now I say I love you
나 아프더라도 몰라
Now I say I love you
So I love you
Now I say I love you
나 아프더라도 몰라 (몰라)
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Now I say I love you
Try, try
말할까 내 불안에 불안을
끊겼다는 Wi-Fi
이젠 안 믿어 Lie, lie
매일 빠져있던 너의 반지같이
허전함 사이사이
그 자리의 기회를
아무에게나 주고 또 bye-bye (Let's go)
너는 넘 빨리 들렀다 가기 땜에
나는 타이밍 안 맞아 매일 바삐
화를 내야 할지 아니면 그냥 아기처럼
울어버리고서 떼를 써야 할지
I don't know, 아예 모르겠어
이러니 내가 노력해도
시간이 없으니 어쩌겠어
할 말이 하나밖에 더 있겠어
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Now I say I love you
So I love you
Now I say I love you
나 아프더라도 몰라
Now I say I love you
So I love you
Now I say I love you
나 아프더라도 몰라 (몰라)
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Now I say I love you
Oh, please
Love me, love me, love me
Oh, please
Love me, love me, love me
Oh, please
Love me, love me, love me
I know, I'm stupid
어쩔 수 없어 널 보고 싶은걸
Now I say I love you
"""
        case  "Butter" :
            lyricsLabel.text = """
Smooth like butter, like a criminal undercover
Gon' pop like trouble breaking into your heart like that (ooh)
Cool shade, stunner, yeah, I owe it all to my mother, uh
Hot like summer, yeah, I'm making you sweat like that (break it down!)
Ooh, when I look in the mirror
I'll melt your heart into two
I got that superstar glow, so
Ooh (do the boogie, like)
A side step, right-left, to my beat
High like the moon, rock with me, baby
Know that I got that heat
Let me show you 'cause talk is cheap
Side step, right-left, to my beat
Get it, let it roll
Smooth like butter, pull you in like no other
Don't need no Usher to remind me you got it bad
Ain't no other that can sweep you up like a robber
Straight up, I (got ya)
Making you fall like that (break it down)
Ooh, when I look in the mirror
I'll melt your heart into two
I got that superstar glow, so
Ooh (do the boogie, like)
Side step, right-left, to my beat
High like the moon, rock with me, baby
Know that I got that heat
Let me show you 'cause talk is cheap
A side step, right-left, to my beat
Get it, let it roll
Get it, let it roll
Get it, let it roll
Ice on my wrist, I'm the nice guy
Got the right body and the right mind
Rolling up the party, got the right vibe
Smooth like (butter), hate us (love us)
Fresh boy, pull up and we lay low
All the players get moving when the bass low
Got ARMY right behind us when we say so
Let's go
Side step, right-left, to my beat (right-left, to my beat)
High like the moon, rock with me, baby
You know that I got that heat
Let me show you 'cause talk is cheap (you know that talk is cheap)
Side step, right-left, to my beat
Get it, let it roll
Smooth like (butter), cool shade (stunner)
And you know we don't stop
Hot like (summer), ain't no (bummer)
You'll be like, "Oh my God"
We gon' make you rock, and you say (yeah)
We gon' make you bounce, and you say (yeah)
Hotter, sweeter, cooler, butter!
Get it, let it roll
"""
        case "Next Level" :
   
            lyricsLabel.text = """
I'm on the next level yeah
절대적 룰을 지켜
내 손을 놓지 말아
결속은 나의 무기
광야로 걸어가
알아 네 home ground
위협에 맞서서
제껴라 제껴라 제껴라
상상도 못한 black out
유혹은 깊고 진해
(Too hot too hot)
(Ooh ooh wee) 맞잡은 손을 놓쳐
난 절대 포기 못해
I'm on the next level
저 너머의 문을 열어
Next level
널 결국엔 내가 부셔
Next level
Kosmo에 닿을 때까지
Next level
제껴라 제껴라 제껴라
La la la la la la (ha, ha)
La la la la la la
La la la la la la
La la la la la
I see the NU EVO
적대적인 고난과 슬픔은
널 더 popping 진화시켜
That's my Naevis
It's my Naevis
You lead, we follow
감정들을 배운 다음
Watch me while I make it out
Watch me while I work it out
Watch me while I make it out
Watch me while I work it out
Work it, work it, work it out
감당할 수 없는 절망도
내 믿음을 깨지 못해 (watch me while I work it)
더 아픈 시련을 맞아도
난 잡은 손을 놓지 않을게 (watch me while I work it) oh
Beat drop
Naevis, calling
절대로 뒤를 돌아보지 말아
광야의 것 탐내지 말아
약속이 깨지면
모두 걷잡을 수 없게 돼
언제부턴가 불안해져 가는 신호
널 파괴하고 말 거야 (we want it)
Come on! Show me the way to Kosmo yeah yeah
Black mamba가 만들어낸 환각 퀘스트
Aespa, ae를 분리시켜놓길 원해 그래
중심을 잃고 목소리도 잃고 비난받고
사람들과 멀어지는 착각 속에
Naevis 우리 ae, ae들을 불러봐
Aespa의 next level "P.O.S"를 열어봐
이건 real world 깨어났어
We against the villain
What's the name? Black mamba
결국 난 문을 열어
그 빛은 네겐 fire
(Too hot too hot)
(Ooh ooh wee)
난 궁금해 미치겠어
이 다음에 펼칠 story, huh!
I'm on the next level
저 너머의 문을 열어
Next level
널 결국엔 내가 부셔
Next level
Kosmo에 닿을 때까지
Next level
제껴라 제껴라 제껴라
I'm on the next level
더 강해져 자유롭게
Next level
난 광야의 내가 아냐
Next level
야수 같은 나를 느껴
Next level
제껴라 제껴라 제껴라 huh!
"""
        case "That That" :
            lyricsLabel.text = """
Twenty
Twenty-two
PSY coming back
(이리 오너라)
Long time no see huh?
오래간만이지 huh?
우리 다시 웃고, 울고, 지지고, 볶고
Let's get loco
Pandemic's over uh
그래, 기분이 오져 uh
다시 그분이 오죠 uh
Everybody say
뻑적지근해
걸쩍지근해
시끌벅적거리네
너무 좋아 북적거리네
동서남북 ay
강남, 강북 ay
싹 다 모여 throw yo hands in the air
I say, "Yeah"
Can you feel it?
Can you feel it?
Whoa-yeah, whoa-whoa
Can you feel it?
Can you feel it?
Whoa-yeah
Ayy
준비하시고 (go)
쏘세요 (oh)
That, that, I like that (like that)
기분 좋아 babe (babe)
흔들어 좌우, 위아래로 (sing it)
One, two, three to the four (sing it)
That, that, I like that
That, that, I like that babe
That, that, I like that
It's like that, that yo
That, that, I like that
That, that, I like that babe
That, that, I like that
It's like that
야, 내가 뭐 하는 사람인지 까먹었지?
That, that, I like that (like that)
시간이 지나도 변함없이
That, that, I like that (like that)
I don't care, I don't care that I like that
That, that, I like that (like that)
내가 바라보고 바래왔던 사람들아
모두 다 ready, set, go!
되려 늘어난 맷집, 때리던 분이 불편하겠지
너네 바램대로 망할 거라 고사 지낸
사람들을 모아다가 가볍게 때찌
적당히 하라고 oh, oh, oh
그냥 닥치고 다 같이 놀아보자고 oh, oh, oh
민윤기와 박재상
Can you feel it?
Can you feel it?
Whoa-yeah, whoa-whoa
Can you feel it?
Can you feel it?
Whoa-yeah
Ayy
준비하시고 (go)
쏘세요 (oh)
That, that, I like that (like that)
기분 좋아 babe (babe)
흔들어 좌우, 위아래로 (sing it)
One, two, three to the four (sing it)
That, that, I like that
That, that, I like that babe
That, that, I like that
It's like that, that yo
That, that, I like that
That, that, I like that babe
That, that, I like that
It's like that, that yo
Do what you wanna (ay, ay, ay)
Say what you wanna (ay, ay, ay)
Do what you wanna (say what?)
That, that, I like that babe
Do what you wanna (ay, ay, ay)
Say what you wanna (ay, ay, ay)
Do what you wanna (say what?)
That, that, I like that babe
That, that, I like that
"""
        case "Counting Stars (Feat. Beenzino)" :
            lyricsLabel.text = """
Wonder, wonder
Counting stars 밤하늘에 펄
Better than your 루이비통
Your 루이비통
Counting stars, stars
밤하늘에 펄
Better than your 루이비통
Your 루이비통
Yeah, Salvador Dali and I'm Picasso
별들은 내 작품을 전시 밀라노에
Not 일방통행 나 피만 토했던
시절을 생각하면 눈물이 핑 도네
My grandfather 요양병원 가시던 날이야
대성통곡하며 인사
코로나 바이러스 면회 못 간대 (fuck Covid)
이제 할아버지 몸값 비싸
좋은 약 좋은 날 좋은 삶
좋은 것만 다 한데 모아
해드려야 하지 그의 손잔
서울대는 아니어도 곧잘 살아
이 새파란 놈은 걱정 마
이제 당신의 자식까지 사장 만들어
이게 나의 각오 yeah
Counting stars 밤하늘에 펄
Better than your 루이비통
Your 루이비통
Counting stars, stars
밤하늘에 펄
Better than your 루이비통
Your 루이비통 ya, ya
A Letter to my step father
기억나나요 내가 대학 갔을 때
축하한다며 주신 백만원으로
난 시작 했어요 내 세상을
낙원상가 가서 야마하 스피커랑
십 사만 원 짜리 마이크 사고
그때 우리 가족 잠실 살던 때
그때만 해도 내가 아저씨라고 아빠를 불렀던 때
But you're realer than my real father now
지금 눈물 참느라 비음 됐어 난
얼마 전 친구 아버지 사진 앞에서
그 상실감을 조금 체험했어 난
오늘 내 별이 몇 개 떴는진
모르지만 one thing that I know (I know)
아버지의 편지가 더 많았지 강원도의 별들보다도
I'm counting stars (stars)
밤하늘에 펄 (let it try)
Better than your 루이비통
Your 루이비통 (back to count)
I'm counting stars, stars
밤하늘에 펄 (let it try)
Better than your 루이비통
Your 루이비통 (count it, back to back, ayy)
Back to back, back to back, ayy
Back to back, rest, rest, ayy
Back to back, hmm, back to back, come on
Back to back, hmm, counting that, ayy
"""
        case "봄여름가을겨울 (Still Life)" :
            lyricsLabel.text = """
이듬해 질 녘 꽃 피는 봄 한여름 밤의 꿈
가을 타 겨울 내릴 눈 일 년 네 번 또다시 봄
정들었던 내 젊은 날 이제는 안녕
아름답던 우리의 봄 여름 가을 겨울
(Four seasons with no reason)
비 갠 뒤에 비애 대신 a happy end
비스듬히 씩 비웃듯 칠색 무늬의 무지개
철없이 철 지나 철들지 못해 (still)
철부지에 철 그른지 오래
Marchin' 비발디, 차이코프스키
오늘의 사계를 맞이해 (boy)
마침내, 마치 넷이 못내
저 하늘만 바라보고서
사계절 잘 지내고 있어, goodbye
떠난 사람 또 나타난 사람
머리 위 저세상, 난 떠나 영감의 amazon
지난 밤의 트라우마 다 묻고
목숨 바쳐 달려올 새 출발 하는 왕복선
변할래 전보다는 더욱더
좋은 사람 더욱더, 더 나은 사람 더욱더
아침 이슬을 맞고 (내 안에)
내 안에 분노 과거에 묻고
For life, do it away, away, away
울었던 웃었던 소년과 소녀가 그리워 나
찬란했던 사랑했던 그 시절만 자꾸 기억나
계절은 날이 갈수록 속절없이 흘러
붉게 물들이고 파랗게 멍들어 가슴을 훑고
언젠가 다시 올 그날 그때를 위하여 (그대를 위하여)
아름다울 우리의 봄 여름 가을 겨울
La, la-la-la-la, la-la-la-la, la, la
La, la-la-la-la, la-la-la-la, la, la
La, la-la-la-la, la-la-la-la, la, la
La, la-la-la-la, la-la-la-la, la, la
이듬해 질 녘 꽃 피는 봄 한여름 밤의 꿈 (음)
가을 타 겨울 내린 눈 봄 여름 가을 겨울 (우)
"""
        case "Savage" :
            lyricsLabel.text = """
Oh my gosh!
Don't you know I'm a savage?
I'm a killa 너를 깰, æ
아직도 가리고 환각을 펼친 너
팰라, we holler
두렵지 않아 너, 너, hit you harder
날 밀어 넣어, deep fake on me
준비가 안된 무대로, 몰아넣어, fake on me
Got everybody mock up to me
수치를 느끼게 멘탈을 흔들어놔
싸늘한 관중 무너져, æ
더는 널 못 참아, say no (yeah, yeah)
두고 봐, 난 좀 savage
너의 dirty 한 play, 더는 두고 볼 수 없어
나를 무너뜨리고 싶은
네 환각들이 점점 너를 구축할 이유가 돼
I'm a savage, 널 부셔 깨 줄게, oh
I'm a savage, 널 짓밟아 줄게, oh
Get me, get me now, get me, get me now (zu, zu, zu, zu)
지금 나를 잡아 아님 난 더 savage (zu, zu, zu, zu)
Get me, get me now, get me, get me now (zu, zu, zu, zu)
이젠 내가 너를 잡아, now I'm a savage
Gimme, gimme now, gimme, gimme now (zu, zu, zu, zu)
너의 말이 보여, 네 약점 algorithm (zu, zu, zu, zu)
김이, 김이 나, 김이, 김이 나 (zu, zu, zu, zu)
MA æ SYNK, 방해 말고 꺼져, savage (zu, zu, zu, zu)
Mmm, everybody look at me, 익숙하잖니
양보해 참아야만 돼, 어른스럽게
I'm lockеd up in the glass, 난 놀고 싶은데
너무 끔찍한 기대, 그런 환각 틀에 나를 가둬 놔
I'm going 광야로, game in, 물리쳐 교묘한 이간질
And my æ로부터 멀어지게 만들 회심찬 네 trick
Wе gone 광야로, game in, 베어버려, 내 빛의 검
데미지를 입은 네게 인정사정 볼 것 없는 펀치
그것 봐? 난 좀 savage
너의 재생력을 막아 흐트러놔 빼놔
잊지 말아 여긴 바로 광야
너의 시공간은 내 뜻대로, make It, break it
I'm a savage, 널 부셔 깨 줄게, oh
I'm a savage, 널 짓밟아 줄게, oh
Get me, get me now, get me, get me now (zu, zu, zu, zu)
지금 나를 잡아 아님 난 더 savage (zu, zu, zu, zu)
Get me, get me now, get me, get me now (zu, zu, zu, zu)
이젠 내가 너를 잡아, now I'm a savage
Gimme, gimme now, gimme, gimme now (zu, zu, zu, zu)
너의 말이 보여, 네 약점 algorithm (zu, zu, zu, zu)
김이, 김이 나, 김이, 김이 나 (zu, zu, zu, zu)
MA æ SYNK, 방해 말고 꺼져, savage (zu, zu, zu, zu)
위기에 빠진 날 지켜준 건 너였어
(My nævis, we love you)
My victory, 하나의 synk dive
모두 네가 만들어준 기회란 거
I know your sacrifices, oh
(My nævis, we love you)
알아 우린 반드시 네 기억들을 찾아줄게
우린 만나 꼭 부활 그다음
Savage
Savage
Yeah
Get me, get me now, get me, get me now (zu, zu, zu, zu)
지금 나를 잡아 아님 난 더 savage (zu, zu, zu, zu)
Get me, get me now, get me, get me now (zu, zu, zu, zu)
이젠 내가 너를 잡아, now I'm a savage
Gimme, gimme now, gimme, gimme now (zu, zu, zu, zu)
너의 말이 보여, 네 약점 algorithm (zu, zu, zu, zu)
김이, 김이 나, 김이, 김이 나 (zu, zu, zu, zu)
Ma æ synk, 방해 말고 꺼져, savage (zu, zu, zu, zu)
Ha, ha, what?
"""
        case "ELEVEN":
            lyricsLabel.text = """
따분한 나의 눈빛이
무표정했던 얼굴이
널 보며 빛나고 있어
널 담은 눈동자는 odd
내 안에 빼곡하게 피어나는 blue
내가 지금 느끼는 이 감정들은 true
내 입술을 간지럽힌 낯선 그 이름
난 몰랐어 내 맘이 이리 다채로운지
긴 꿈을 꾸게 해 이 방은 작은 heaven
춤을 추곤 해 실컷 어지러울 만큼
Oh my, oh my God
한 칸 더 채우고 있어
잘 봐 one, two, three, four, five, six, seven
You make me feel like eleven
투명한 너와 나의 사이
가만히 들여다보다
일렁인 물결 속으로
더 빠져드는 걸
그날 향기로운 보랏빛의 mood
셀 수 없이 반복해도 기분 좋은 꿈
감히 누가 이렇게 날 설레게 할 줄
난 몰랐어 내 맘이 이리 다채로운지
긴 꿈을 꾸게 해 이 방은 작은 heaven
춤을 추곤 해 실컷 어지러울 만큼
Oh my, oh my God
한 칸 더 채우고 있어
잘 봐 one, two, three, four, five, six, seven
You make me feel like eleven (hey)
내 앞에 있는 너를 (hey)
그 눈에 비친 나를 (그 눈에 비친 나를)
Aya, aya, aya (가만히 바라봐)
내 앞에 있는 너를
그 눈에 비친 나를
가만히 바라봐
Don't say now
서둘러 오진 마
이 순간이 좋아 난
미처 몰랐어 내 맘이 이리 다채로운지 (whoa-ooh-whoa-ooh-whoa)
긴 꿈을 꾸게 해 이 방은 작은 heaven
춤을 추곤 해 실컷 어지러울 만큼
Oh my, oh my God
한 칸 더 채우고 있어
잘 봐 one, two, three, four, five, six, seven
You make me feel like eleven
내 앞에 있는 너를
그 눈에 비친 나를
Aya, aya, aya
내 앞에 있는 너를
그 눈에 비친 나를
사랑하게 됐거든
"""
            
        default :
            titleLabel.text = curTitle
            
        }
        
    }
}
