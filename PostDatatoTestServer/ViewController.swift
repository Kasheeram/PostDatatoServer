//
//  ViewController.swift
//  PostDatatoTestServer
//
//  Created by kasheeRam on 19/03/17.
//  Copyright © 2017 kasheeRam. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let todosEndpoint = "http://minvitd.com/api/rest/users/register"
       // let todosEndpoint = "http://minvitd.com/api/rest/user"
        let newTodo :[String:Any] = ["name":"Mohit","email":"mohit.gupta@gmail.com","phone":"9988117766","password":"aaa"]
        //let newTodo :[String:Any] = ["objectId":"62"]
        
        // for post data use .post in place of .delete
        Alamofire.request(todosEndpoint, method: .post, parameters: newTodo, encoding: JSONEncoding.default,headers: nil).validate().responseJSON{
            response in
            switch response.result{
            case .success:
                print(response)
                break
            case .failure(let error):
                print(error)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

