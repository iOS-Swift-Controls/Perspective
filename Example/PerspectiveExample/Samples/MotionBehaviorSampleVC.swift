/*
 * PerspectiveView
 *
 * Copyright 2018-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import UIKit

class MotionBehaviorSampleVC: UIViewController {
  @IBOutlet weak var perspectiveView: PerspectiveView!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = "Motion behavior sample"

    let contentSize = CGSize(width: 1600, height: 900) // CGSize(width: 1443, height: 812)

    for i in stride(from: 6, to: 0, by: -1) {
      let imgView = UIImageView(image: UIImage(named: "candy-layer0\(i)"))
      imgView.frame = CGRect(origin: .zero, size: CGSize(width: 1600, height: 900))

      let sheet = PerspectiveSheet(view: imgView)
      perspectiveView.addSheet(sheet)
    }
    
    let motionBehavior = PerspectiveMotionBehabior()
    perspectiveView.addBehavior(motionBehavior)
  }
}

