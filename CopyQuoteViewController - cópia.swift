//
//  CopyQuoteViewController.swift
//  Quoted
//
//  Created by Ivo João on 05/02/17.
//  Copyright © 2017 Ivo. All rights reserved.
//

import UIKit

class CopyQuoteViewController: UIViewController {

    @IBOutlet weak var copyButton: UIButton!
    var user:User?
    @IBOutlet weak var captionTextView = UITextView()
    var quote: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.captionTextView?.text = quote?.description
        
        //captionTextView?.text = caption
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func copyButtonPressed(_ sender: Any) {
        UIPasteboard.general.string = captionTextView?.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
