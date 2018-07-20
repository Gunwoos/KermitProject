//
//  KermitData.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

class KermitData{
    let imageList = [#imageLiteral(resourceName: "Kermit_1"),#imageLiteral(resourceName: "Kermit_2"),#imageLiteral(resourceName: "Kermit_3"),#imageLiteral(resourceName: "Kermit_4"),#imageLiteral(resourceName: "Kermit_5"),#imageLiteral(resourceName: "Kermit_6")]
    let nameList = ["서울 사는 커밋","강원도 사는 커밋","인천 사는 커밋","부산 사는 커밋","광주 사는 커밋","제주 사는 커밋"]
    class KermitSeoul{
        let name = ""
        let image = UIImage(named: "Kermit_1")
        let tripTitle = [
            "뚝섬유원지",
            "옥타곤",
            "아레나"
        ]
        let tripUrlList = [
            "https://www.google.com/maps/search/tukseom/@37.5315366,127.0579362,15z/data=!3m1!4b1",
            "https://www.octagonseoul.com",
            "http://octagon.thejoy.kr"
        ]
        let tripLatitude = [
            37.531792,
            37.511384,
            37.514558
        ]
        let tripLongitude = [
            127.066648,
            127.031424,
            127.020468
        ]
    }
    class KermitGangWonDo{
        let name = ""
        let image = UIImage(named: "Kermit_2")
        let tripTitle = [
            "경포대 해수욕장",
            "화암 동굴",
            "삼척 해양 레일 바이크"
        ]
        let tripUrlList = [
            "http://korean.visitkorea.or.kr/kor/bz15/where/where_main_search.jsp?cid=128758",
            "http://jsimc.or.kr/html/5tour/2tour1.php",
            "http://oceanrailbike.net/main/main.do"
        ]
        let tripLatitude = [
            37.805213,
            37.576074,
            37.593486
        ]
        let tripLongitude = [
            128.907745,
            128.749832,
            129.288162
        ]
    }
    class KermitGyeonggido{
        let name = ""
        let image = UIImage(named: "Kermit_3")
        let tripTitle = [
            "장봉도",
            "송도 센트럴 파크"
        ]
        let tripUrlList = [
            "http://korean.visitkorea.or.kr/kor/bz15/where/where_main_search.jsp?cid=128005",
            "http://www.insiseol.or.kr/institution_guidance/central_park/index.asp"
        ]
        let tripLatitude = [
            37.540170,
            37.413488
        ]
        let tripLongitude = [
            126.336672,
            126.638724
        ]
    }
    class KermitBusan{
        let name = ""
        let image = UIImage(named: "Kermit_4")
        let tripTitle = [
            "해운대 송정해수욕장"
        ]
        let tripUrlList = [
            "http://tour.busan.go.kr/board/view.busan?boardId=ATTRACTION&menuCd=DOM_000000101001013000&dataSid=431"
        ]
        let tripLatitude = [
            35.178401
        ]
        let tripLongitude = [
            129.199844
        ]
    }
    class KermitGwangju{
        let name = ""
        let image = UIImage(named: "Kermit_5")
        let tripTitle = [
            "무등산"
        ]
        let tripUrlList = [
            "http://www.knps.or.kr/front/portal/visit/visitCourseMain.do?parkId=122000&menuNo=7020090"
        ]
        let tripLatitude = [
            35.145661
        ]
        let tripLongitude = [
            126.987493
        ]
    }
    class KermitJeju{
        let name = ""
        let image = UIImage(named: "Kermit_6")
        let tripTitle = [
            "파라다이스 카지노"
        ]
        let tripUrlList = [
            "http://www.paradisecasino.co.kr/paradise-casino/jeju-grand"
        ]
        let tripLatitude = [
            33.489857
        ]
        let tripLongitude = [
            126.488211
        ]
    }
}


