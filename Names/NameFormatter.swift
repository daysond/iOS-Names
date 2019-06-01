// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

class NameFormatter {
  
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  func inverted() -> String {
    
    var nameStrings = self.name.trimmingCharacters(in: .whitespaces).components(separatedBy: " ")
    let honorifics = ["Dr.", "Mr.","Mrs","Ms"]
    var invertedName = ""
    
    if nameStrings.count == 0 {
      return invertedName
    }
    
    if honorifics.contains(nameStrings[0]) {
      
      if nameStrings.count == 1 {
        return invertedName
      } else if nameStrings.count == 2 {
        invertedName = nameStrings[0] + " " + nameStrings[1]
      } else if nameStrings.count == 3 {
        invertedName = nameStrings[0] + " " + nameStrings[2] + ", " + nameStrings[1]
      }
      
    } else {
      if nameStrings.count == 1 {
        invertedName = nameStrings[0]
      } else if nameStrings.count == 2 {
        invertedName = nameStrings[1] + ", " + nameStrings[0]
      }
    }
    
    
    
    return invertedName
  }
  
}
