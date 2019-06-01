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

import XCTest
@testable import Names

class NamesTests: XCTestCase {
/*
  return an empty string when passed an empty string
  input: ""
  output: "" */
  
  func test_invertName_GivenAnEmptyString_ShouldReturnEmptyString() {
    
    let inputName = ""
    let expectedOutput = ""
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
  }
  
  /* return a single name when passed a single name
   input: "name"
   output: "name"*/
  
  func test_invertName_GivenASingleName_ShouldReturnASingleName() {
    
    let inputName = "name"
    let expectedOutput = "name"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
  }
  
  /*
  return a single name when passed a single name with extra spaces
  input: " name "
  output: "name" */
  
  func test_invertName_GivenASingleNameWithExtraSpaces_ShouldReturnASingleName() {
    
    let inputName = " name"
    let expectedOutput = "name"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
  }
  
  
  /*
  return a last-name, first-name when passed a first and last-name
  input: "first last"
  output: "last, first" */
  
  func test_invertName_GivenFirstLastName_ShouldReturnFirstCommaLastName () {
    
    let inputName = "first last"
    let expectedOutput = "last, first"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
    
  }
  
  /*
  return a last-name, first-name when passed a first and last-name with extra spaces around the names (You may want to use regular expressions to detect the whitespace)
  input: " first last"
  output: "last, first" */
  
  func test_invertName_GivenFirstLastNameWithExtraSpaces_ShouldReturnLastCommaFirstName() {
    
    let inputName = " first last"
    let expectedOutput = "last, first"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
  }
  
  /*
  return an empty string when passed a single honorific
  input: "Dr. "
  output: "" */
  
  func test_invertName_GivenASingleHonorific_ShouldReturnAnEmptyString () {
    
    let inputName = "Dr. "
    let expectedOutput = ""
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
    
    
  }
  
  /*
  return honorific first-name when passed honorific first-name
  input: "Dr. first"
  output: "Dr. first" */

  func test_invertName_GivenHonrificFirstName_ShouldReturnHonorificFirstName() {
    
    let inputName = "Dr. first"
    let expectedOutput = "Dr. first"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  /*
  return a honorific last-name, first-name when passed honorific first-name last-name
  input: "Dr. first-name last-name"
  output: "Dr. last-name, first-name" */
  
  func test_invertName_GivenHonrificFirstLastName_ShouldReturnHonorificLastCommaFirstName() {
    
    let inputName = "Dr. first last"
    let expectedOutput = "Dr. last, first"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  /*
  return a honorific last-name, first-name when passed honorific first-name last-name with extra spaces around the words
  input: " Dr. first-name last-name "
  output: "Dr. last-name, first-name"
*/
  
  func test_invertName_GivenHonrificFirstLastNameWithExtraSpaces_ShouldReturnHonorificLastCommaFirstName() {
    
    let inputName = " Dr. first last"
    let expectedOutput = "Dr. last, first"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
}
