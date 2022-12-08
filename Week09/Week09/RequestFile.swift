//
//  RequestFile.swift
//  Week09
//
//  Created by eunseo on 2022/11/25.
// 서버 통신 요청을 위한 파일

import Foundation
import Alamofire

class RequestFile{
    func getRequestData(_ viewController: ViewController){
            let url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
            let params: Parameters = [
                "numOfRows" : 10,
                "pageNo" : 1,
                "serviceKey" : "zz2nqdSQjUqVLvisE6O2swAS8TQmpCb4mfW2jH0hDeXibtdELMIwUEpB9NEAFwVLwEGzK1BjK3tei0X%2FkZr3wA%3D%3D",//발급받은 키
                "base_date" : "20221124",
                "base_time" : "0500",
                "nx" : 55,
                "ny" : 127,
                "dataType" : "JSON"
            ]
            var headers = HTTPHeaders()
                headers = [
                    "Content-Type" :"text/html; charset=UTF-8",
                    "Accept": "multipart/form-data"
                ]
        
            //HTTP Method GET
            AF.request(url,
                       method: .get,
                       parameters: params,
                       headers: headers)
            .responseDecodable(of: DataModel.self) {response in
                    switch response.result{
                        case .success(let response):
                            print("DEBUG>> OpenWeather Response \(response)")
                            viewController.didSuccess(response)
                            
                        case .failure(let error):
                            print("DEBUG>> OpenWeather Get Error : \(error.localizedDescription)")
                            debugPrint(error)
                        }
                    }
    }
}
