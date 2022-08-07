# 오픈마켓

## 프로젝트 소개
오픈마켓을 창설하여 상품을 관리해본다.

> 프로젝트 기간: 2022-07-25 ~ 2022-08-05</br>
> 팀원: [수꿍](https://github.com/Jeon-Minsu), [데릭](https://github.com/derrickkim0109) </br>
리뷰어: [제이슨](https://github.com/ehgud0670)</br>


## 📑 목차

- [🧑🏻‍💻🧑🏻‍💻 개발자 소개](#-개발자-소개)
- [⏱ TimeLine](#-TimeLine)
- [💡 키워드](#-키워드)
- [🤔 핵심경험](#-핵심경험)
- [📱 실행 화면](#-실행-화면)
- [🗂 폴더 구조](#-폴더-구조)
- [📝 기능설명](#-기능설명)
- [🚀 TroubleShooting](#-TroubleShooting)
- [📚 참고문서](#-참고문서)


## 🧑🏻‍💻🧑🏻‍💻 개발자 소개

|수꿍|데릭|
|:---:|:---:|
|<image src = "https://i.imgur.com/6HkYdmp.png" width="250" height="250">|<image src = "https://avatars.githubusercontent.com/u/59466342?v=4" width="250" height="250">
|[수꿍](https://github.com/Jeon-Minsu)|[데릭](https://github.com/derrickkim0109)|

### Week 1
    
> 2022.7.25 ~ 2022.7.29
    
- 2022.07.25 
    - MDN을 기반으로 HTTP POST 공부
- 2022.07.26 
    - HTTP Post 기능구현
    - Delete secret(POST) 기능구현
    - Builder 패턴 URLComponents 타입 구현
    - HTTPMethod enum
    - APIConfiguration(url, mimetype, path, parameters) 타입 구현

- 2022.07.27
    - ProductModificationAPIManager를 통행 patch 기능 구현
    - ProductSecretRetrievalAPIManager를 바탕으로 secret 조회 기능 추가
    - ProductDeleteAPIManager를 통한 delete 기능 구현
    
- 2022.07.28
    - TextField, ImagePicker 기능 구현
    - ProductEnrollmentViewController로의 화면 전환 방식 Navigation에서 Modal로 변경
    - Autolayout
    
- 2022.07.29
    - Keyboard 줄바꿈 시 TextView 라인 자동 생성 및 View 높이에 맞게 Keyboard 설정
    - UIScrollView 내에서의 UITextField Autolayout 설정

### Week 2
    
> 2022.8.01 ~ 2022.8.05
    
- 2022.08.01
    - STEP2 기능 실험
        - ScrollView를 통한 상품 상세 페이지 스크롤 기능 연습

- 2022.08.02 
    - View 삭제를 통한 ViewController로 기능 복원 
    - ViewWillAppear 내 데이터 가져와 데이터 등록 시 다시 표시
    - APIProtocol 기능분리 및 각각의 기능만을 구현
    - 상품 상세 페이지 UI 구현
    - delegate를 통한 product Image 전달
    - 셀 재사용시 초기화 처리
    - 상품 상세 페이지 UI 데이터 연결
    - 상품 수정 및 삭제 관련 action sheet 구현

- 2022.08.03
    - 상품 수정 네비게이션 유효성 검사 및 수정/삭제 기능 구현
    - PATCH 결과에 따른 UI 업데이트
    - Alert 내 textView 추가
    - 상품 삭제 기능 구현
    
- 2022.08.04
    - 전체 코드 리팩토링
        - Alert, 화면전환 시 중복적으로 사용된 DispatchQueue 수정
        - 매직 리터럴 삭제를 위한 타입 생성
        - 불필요한 개행 및 코드 들여쓰기 제거
    - STEP2 PR
    
- 2022.08.05
    - loading indicator 구현
    - 컬렉션뷰 새로고침 indicator 구현
        - 스크롤이 끝났을때마다 data 추가 fetch
    - ImagePicker View 삭제 기능 구현
    - NSCache를 통한 이미지 캐시 기능 구현
    - 화면 전환을 통한 UI 업데이트가 메인 쓰레드에서 작동하도록 비동기 처리
    
## 💡 키워드

- `UICollectionViewDelegate`
- `HTTP`, `Header`, `Body`
- `HTTPMethod`, `GET`, `POST`, `PATCH`, `DELETE`
- `UIImagePickerController`, `editedImage`, `originalImage`
- `UITextField`, `placeholder`, `keyboardType`
- `Keyboard`, `keyboardFrameEndUserInfoKey`
- `UIScrollView`, `contentInset`, `scrollIndicatorInsets`
- `UITextView`, `UITextViewDelegate`
- `URLComponents`
- `MIMEType`, `applicaetionJSON`, `multipart/form-data`
- `Content-Type`, `Content-Disposition`, `boundary`, `name`, `filename`, `carriage return`, `line feed`
- `Delegate Design Pattern`, `Notification Center`
- `CALayer`
- `Alert TextView`, `Alert ActionSheet`, `Alert`
- `UINavigation init()`, `present`
- `UIStackView Inset`, `UIEdgeInsets`
- `DispatchQueue`
- `UICollectionView Horizontal ScrollView` 

    
## 🤔 핵심경험

- [x] multipart/form-data의 구조 파악
- [x] URLSession을 활용한 multipart/form-data 요청 전송
- [x] 사용자 친화적인 UI/UX 구현 (적절한 입력 컴포넌트 사용, 알맞은 키보드 타입 지정)
- [x] 상속 혹은 프로토콜 기본구현을 통해 (수정/등록 과정의) 공통기능 구현
- [x] UIAlertController 액션의 completion handler 활용
- [x] UIAlertController의 textFields 활용
- [x] UICollectionView 를 통한 좌우 스크롤 기능 구현


## 📱 실행 화면

|상품 등록 화면|글자수 부족 유효성 검사|상품명 미작성 유효성 검사|글자수 초과 유효성 검사|
|:--:|:--:|:--:|:--:|
|![상품 등록 화면](https://i.imgur.com/qO0Yk43.gif)|![상품명 글자 유효성 검사](https://i.imgur.com/RLLoKJY.gif)|![상품명 미작성 유효성 검사](https://i.imgur.com/Bi8BfHR.gif)|![글자수 초과 유효성 검사](https://i.imgur.com/qQyghFE.gif)|


|글자수 초과 유효성 검사(2)|이미지 초과 유효성 검사|상품 등록 요건 부족|상품 등록 요건 충족|
|:--:|:--:|:--:|:--:|
|![글자수 초과 유효성 검사(2)](https://i.imgur.com/b9SStmM.gif)|![이미지 초과 유효성 검사](https://i.imgur.com/p3W1Iww.gif)|![상품 등록 요건 부족](https://i.imgur.com/QVwSAqK.gif)|![상품 등록 요건 충족](https://i.imgur.com/d6Yd1dx.gif)|

|상품 상세 정보 화면|상품 이미지 횡스크롤|텍스트뷰 입력 시 Inset 적용|상품 수정 취소|
|:--:|:--:|:--:|:--:|
|![상품 상세 정보 화면](https://i.imgur.com/cBBOlfJ.gif)|![상품 이미지 횡스크롤](https://i.imgur.com/5tynnRn.gif)|![텍스트뷰 입력 시 Inset 적용](https://i.imgur.com/Cejop0P.gif)|![상품 수정 취소](https://i.imgur.com/v6oOIEZ.gif)|    

|상품 수정 성공|상품 삭제 성공|상품 삭제 실패|상품 삭제 취소|
|:--:|:--:|:--:|:--:|
|![상품 수정 성공](https://i.imgur.com/O58Z2Ac.gif)|![상품 삭제 성공](https://i.imgur.com/1xFoaPD.gif)|![상품 삭제 실패](https://i.imgur.com/auICRbV.gif)|![상품 삭제 취소](https://i.imgur.com/RUh1qsE.gif)| 


    
## 🗂 폴더 구조

```
.
└── OpenMaket
    ├── Application
    │   ├── AppDelegate
    │   ├── SceneDelegate
    │   ├── Presentation
    │   │   ├── ViewModel
    │   │   │   ├── Delegate
    │   │   │   │   ├── ProductDetailsDelegate
    │   │   │   │   ├── ProductListDelegate
    │   │   │   │   └── ProductModificationDelegate
    │   │   │   ├── ProductListViewModel
    │   │   │   └── ProductDetailsViewModel
    │   │   ├── View
    │   │   │   ├── Section
    │   │   │   ├── ProductList
    │   │   │   │   ├── ListCollectionCell
    │   │   │   │   └── GridCollectionCell
    │   │   │   └── ProductDetails
    │   │   │       └── ProductDetailsCollectionViewCell
    │   │   └── ViewController
    │   │       ├── ProductList
    │   │       │   └── ProductListViewController
    │   │       ├── ProductEnrollment
    │   │       │   └── ProductEnrollmentViewController
    │   │       ├── ProductDetails
    │   │       │   └── ProductDetailsViewController
    │   │       └── ProductModification
    │   │           └── ProductModificationViewController
    │   └── Domain
    │       └── Model
    │           ├── AlertSetting
    │           ├── ProductStatus
    │           ├── CurrentPage
    │           ├── AlertMessage
    │           ├── SegmentedControlItem
    │           ├── Manager
    │           │   ├── GET
    │           │   │   ├── ProductListAPIManager
    │           │   │   └── ProductDetailsAPIManager
    │           │   ├── POST
    │           │   │   ├── ProductEnrollmentAPIManager
    │           │   │   └── ProductSecretRetrievalAPIManager
    │           │   ├── PATCH
    │           │   │   └── ProductModificationAPIManager
    │           │   └── DELETE
    │           │       └── ProductDeleteAPIManager       
    │           └── Entities
    │               ├── ProductList
    │               │   ├── ProductList
    │               │   └── ProductListEntity
    │               ├── ProductDetails
    │               │   ├── ProductDetails
    │               │   └── ProductDetailsEntity
    │               ├── EnrollProductEntity
    │               └── ModifiedProductEntity
    ├── Networking
    │   ├── API
    │   │   ├── APIConfiguration
    │   │   ├── APIProtocol
    │   │   │   ├── APIProtocol
    │   │   │   ├── GETProtocol
    │   │   │   ├── POSTProtocol
    │   │   │   ├── PATCHProtocol
    │   │   │   └── DELETEProtocol
    │   │   ├── APIClient
    │   │   └── APIError
    │   └── ProductURLUtilities
    │       ├── HTTP
    │       │   ├── HTTPMethod
    │       │   ├── RequestName
    │       │   └── MIMEType
    │       ├── User
    │       ├── URLComponentsBuilder
    │       └── ProductURLQueryItem
    ├── Extensions
    │   ├── String+Extensions
    │   ├── Double+Extensions
    │   └── UIViewController+Extensions
    └── Resource
        ├── Info
        ├── Assets
        └── LaunchScreen
```

    
## 📝 기능설명
    
**서버 통신 기능 구현**
- APIProtocol
    - 각각의 HTTPMethod에 따른 서버와 통신하는 메서드 구현
- APIConfiguration
    - HTTPMethod에 따른 URL을 생성하는 Configuration 타입 구현
- URLComponetsBuilder
    - Builder Pattern을 활용하여 dynamic하게 URL 생성

**상품등록 UI 구현**

- UIImagePickerController
- ScrollView
- StackView
- TextField
- TextView

    
**네트워크 통신을 담당할 타입을 설계하고 구현**
- ProductList, Product
    - 서버 API 데이터 형식을 고려하여 모델 타입 구현
- NetworkProvider
    - 서버로부터 데이터를 받아오는 기능을 수행
    - 기능을 수행한 위한 protocol, extension 별도 생성
- NetworkError
    - 서버로부터 데이터를 받아오는 도중 발생하는 에러 표현
CollectionView Cell을 각 Layout 별로 분리하여 구현
- GridCollectionCell, ListCollectionCell
    - CollectionView의 Cell 타입 구현 
- ProductEntity
    - 서버 매핑 타입 중 Cell에 필요한 타입들 별도 구현
Utilities
- String+Extensions
    - String 자료형을 확장시켜 필요 메서드 관리
        * strikeThrough - 해당 문자열의 처음부터 입력 받은 수의 인덱스까지 strikethroughStyle 적용.
- Int+Extensions
    - Int 자료형을 확장시켜 필요 메서드 관리
        * numberFormatter - 10진수로 변환하고 String 타입으로 변환 후 반환

**상품수정 UI 구현**

- Alert TextView
- UICollectionView Horizontal

**상품 수정/삭제 Navigation Item**
- User의 vendorID와 상품 등록자의 vendorID가 같은지 유효성 체크를 한 후 같으면 Edition Navigation Item을 노출 시킵니다.
    
**화면 전환시 데이터 전달**
- Delegate Design Pattern을 활용
    - POST,PATCH, DELETE 호출 후 화면 전환 시 서버 데이터 리셋을 위해 사용
    
**상품상세 화면의 상품 이미지**
- UICollectionView를 활용하여 화면에 꽉차는 비율의 이미지를 좌우 스크롤할 수 있음

**상품삭제시 User Secret입력**
- Alert TextField를 활용하여 User Secret입력 받을 수 있도록 설정
- User Secret 유효성 체크 후 Secret Post를 활용하여 Product Secret Response 
- Product Secret을 받은 후 DELETE로 상품 삭제 
        
## 🚀 TroubleShooting
    
### STEP 1

#### T1. URLRequest 통합 관리 방법
    
- URLRequest 방법에는 HTTPMethod부터 GET, POST, PATCH, PUT, DELETE 등 다양하게 존재합니다. 또한, 이에 따라 URL 구성에도 차이를 보인고, 심지어는 POST 경우에는 body를 통하여 서버에 전달하고자 하는 데이터를 입력하여야 합니다. 이를 각각 하나하나 설정하기 보다는, 전체적으로 이를 관리할 수 있는 객체를 만들 필요성을 느꼈습니다. 
    
- 아래의 APIConfiguration 하나의 객체를 통하여, 사용자는 각각의 HTTPMethod에 따라 원하는 방법을 선택하면, 그에 맞는 url과 parameters를 넣을 수 있게 만들었습니다.


- 코드
    
    ```swift
    typealias Parameters = [String: String]
    
    struct APIConfiguration {
        let method: HTTPMethod
        let url: URL
        let parameters: Parameters?
        
        init(method: HTTPMethod,
             url: URL,
             parameters: Parameters? = nil) {
            
            self.method = method
            self.url = url
            self.parameters = parameters
        }
    }
    ```

- 물론, APIConfiguration 만으로 url과 parameters가 자동으로 들어갈 수는 없습니다. 추가적인 작업이 필요합니다. 먼저, URL을 동적으로 생성할 수 있도록 빌더 패턴을 활용하여 URLComponetBuilder를 생성하였습니다. 각각의 HTTPMethod에 따라 필요로하는 URLComponent가 상이하므로, scheme, host(domain), path, queryItem으로 각각 분리하여 필요로하는 부분만을 추출하여 URLComponets를 구성하고, 마지막에 build를 URLComponents 타입을 반환한 이후, 해당 타입의 프로퍼티인 url을 사용하면 동적인 url을 생성할 수 있습니다.


- 코드
    
    ```swift
    import Foundation
    
    final class URLComponentsBuilder {
        private var urlComponents = URLComponents()
        
        init() { }
        
        func build() -> URLComponents {
            return urlComponents
        }
        
        func setScheme(_ scheme: String) -> URLComponentsBuilder {
            urlComponents.scheme = scheme
            
            return self
        }
        
        func setHost(_ host: String) -> URLComponentsBuilder {
            urlComponents.host = host
            
            return self
        }
        
        func setPath(_ path: String) -> URLComponentsBuilder {
            urlComponents.path = path
            
            return self
        }
        
        func addQuery(items: [String: String]) -> URLComponentsBuilder {
            urlComponents.addQuery(items)
            
            return self
        }
    }
    
    extension URLComponents {
        fileprivate mutating func addQuery(_ items: [String: String]) {
            var newQueryItems = [URLQueryItem]()
            
            for (key, value) in items.sorted(by: { $0.key < $1.key }) {
                newQueryItems.append(URLQueryItem(name: key,
                                                  value: value))
            }
            
            if self.queryItems == nil {
                self.queryItems = newQueryItems
            } else {
                self.queryItems?.append(contentsOf: newQueryItems)
            }
        }
    }
    ```

- 다음으로, HTTPMethod에 따라 생성된 URL을 바탕으로 원하는 파라미터를 활용한 메서드를 구현하였습니다. 이를 위하여 APIProtocol을 생성하여 APIConfiguration 인스턴스를 프로퍼티로 받게 하였고, 서버로부터 데이터를 post하는 enrollData란 메서드를 구현하였습니다.

- 코드
    
    ```swift
    protocol APIProtocol {
        var configuration: APIConfiguration { get }
    }
    
    extension APIProtocol {
        func enrollData(using client: APIClient = APIClient.shared,
                    postEntity: EnrollProductEntity,
                    completion: @escaping (Result<Data,APIError>) -> Void) {
    
        var request = URLRequest(url: configuration.url)
    
        let dataBody = createDataBody(withParameters: postEntity.parameter,
                                      media: postEntity.images,
                                      boundary: MIMEType.generateBoundary())
    
        request.httpMethod = configuration.method.rawValue
        request.httpBody = dataBody
        request.setValue(MIMEType.multipartFormData.value,
                         forHTTPHeaderField: MIMEType.contentType.value)
        request.addValue(User.identifier.rawValue,
                         forHTTPHeaderField: RequestName.identifier.key)
            ...
    }
    ```

- 마지막으로 위 메서드를 호출할 수 있도록 APIProtocol을 채택한 ProductEnrollmentAPIManager란 구조체를 생성하여 데이터를 보내고자 하는 서버의 URL 주소와 HTTPMethod를 선택할 수 있었습니다. 이를 응용하여 각각의 Request 방법에 따른 APIManager를 만들어보았습니다. 위의 방법을 이용한다면, 사용자의 의도에 맞는 Request 방법을 사용할 수 있습니다.

- 코드
    
    ```swift
    struct ProductEnrollmentAPIManager: APIProtocol {
        var configuration: APIConfiguration
        var urlComponent: URLComponents
        
        init?() {
            urlComponent = URLComponentsBuilder()
                .setScheme("https")
                .setHost("market-training.yagom-academy.kr")
                .setPath("/api/products")
                .build()
            
            guard let url = urlComponent.url else {
                return nil
            }
            
            configuration = APIConfiguration(method: .post, url: url)
        }
    }
    ```
    
#### T2-1. ScrollView 안의 TextView 설정

- 최상위에 존재하는 ScrollView의 스크롤 기능만 on하기 위해 ScrollView 내에 TextView를 넣으면 TextView의 스크롤 기능을 false로 처리합니다. 
    
```swift 
    textView.isScrollEnabled = false
```

- TextView의 길이 자동설정
```swift 
   
extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text)
        let size = CGSize(width: view.frame.width, height: .infinity)
        let estimatedSize = textView.sizeThatFits(size)
        textView.constraints.forEach { (constraint) in
            if constraint.firstAttribute == .height {
                constraint.constant = estimatedSize.height
            }
        }
    }
}
 
```
- ScrollView와 별개로 TextView의 동적 사이즈 설정이 필요할 것으로 예상하여 위의 코드를 작성하였으나 따로 설정할 필요가 없었습니다.

    
#### T2-2. 텍스트 입력 시 Keyboard 위로 View 올림 설정
-  NotificationCenter를 통해서 Keyboard가 나타나고 사라짐을 알리기 위해 사용하였습니다.

- NotificationCenter 선언
```swift 
func registerNotificationForKeyboard() {
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillShow),
        name: UIResponder.keyboardWillShowNotification,
        object: nil)
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillHide),
        name: UIResponder.keyboardWillHideNotification,
        object: nil)
}
```

- Keyboard Show/Hide에 맞춰 RootView인 ScollView의 content와 scrollIndicator의 길이를 맞춥니다. 
```swift 
@objc private func keyboardWillShow(_ notification: Notification) {
    guard let userInfo = notification.userInfo,
          let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
        return
    }

    let contentInset = UIEdgeInsets(
        top: 0.0,
        left: 0.0,
        bottom: keyboardFrame.size.height,
        right: 0.0)

    rootScrollView.contentInset = contentInset
    rootScrollView.scrollIndicatorInsets = contentInset
}

@objc private func keyboardWillHide() {
    let contentInset = UIEdgeInsets.zero
    rootScrollView.contentInset = contentInset
    rootScrollView.scrollIndicatorInsets = contentInset
}
```
- 이렇게 설정하고 나온 문제는 텍스트뷰 내 텍스트의 행의 수가 많지 않다면, 키보드가 화면에 등장함에 있어서 서로의 영역을 침범하지는 않지만, 만약 텍스트의 줄바꿈 횟수가 일정범위를 넘어간다면, 화면의 밖으로 텍스트 뷰의 길이가 길어져 텍스트를 확인할 수 없게 됩니다. 이러한 문제는 텍스트 뷰의 bottom anchor가 최상위 뷰의 bottom anchor가 constraint 관계를 설정해주지 않아 발생한 문제였습니다. 이를 해결하기 위하여, 아래의 코드와 같이 제약을 설정해줌으로써 텍스트 뷰의 길이가 길어져도 화면 내에 표시할 수 있게 되었습니다.

```swift 
productDescriptionTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
```

### STEP 2
    
#### T1. 상품 상세 페이지 스크롤 문제
    
- 상품 상세 페이지 UI 구현 중, Scroll View 안에 rootStackView를 통해 각각의 UI 요소를 추가해보았는데, textView에 작성된 text에 끝없이 스크롤이 되는 문제가 발생하였습니다. 이를 해결하기 위하여 코드를 꼼꼼하게 다시 살펴본 결과, stackView 안에 있던 textView에 bottomanchor를 설정한 사실을 발견하였습니다. 따라서, textView의 bottomanchor에 잡혀있던 제약을 해제하면, rootStackView의 제약을 온전히 따를 수 있기 때문에, 스크롤 기능이 적절하게 동작하였습니다.

    
#### T2. 상품 수정후 데이터 업데이트

- 상품 상세 페이지에서 상품 수정 페이지로 이동할 때 현재 상품 상세 페이지에 있는 `productInfo` 데이터를 `rootViewController`에 해당하는 `ProductModificationViewController`의 프로퍼티로 데이터를 전달하고자 하였습니다. 하지만, 저희의 화면 전환 방식은 일반적인 방식이 아닌, `NavigationController`를 모달 방식으로 화면을 전환하고자 하였습니다. NavigationController를 사용한 이유는 `Navigation Bar`를 사용하기 위해서였습니다. 하지만 프로퍼티로의 데이터 전달을 `rootViewController`로 설정하게 되면, `productModificationViewController`로 데이터 전달이 이루어지지 않게 됩니다. 이를 해결하기 위하여, `productModificationViewController`를 `Navigation Controller` 클래스를 상속시켜보기도 하였고, `delegate`를 이용하여 데이터를 전달해보고자 하였으나, 결국 `productModificationViewController`로의 접근을 수행하지 못하여 모두 실패로 돌아갔습니다. 이를 해결하기 위한 방법을 궁구한 결과, `productModificationController`를 먼저 생성하여, 해당 뷰 컨트롤러의 프로퍼티로 데이터 전달을 수행한 후, `NavigationController`의 `rootViewController`로 설정하여 화면 전환을 하면`Navigation Bar`의 기능과 원하는 데이터를 모두 얻을 수 있었습니다.
    
```swift
  let productModificationViewController = ProductModificationViewController()
    productModificationViewController.productInfo = self?.productInfo
    productModificationViewController.delegate = self
    
  let rootViewController = UINavigationController(rootViewController: viewController)
    rootViewController.modalPresentationStyle = .fullScreen

    self.present(rootViewController, animated: true)
```
    
#### T3. 비동기 상황에서 Alert 호출 문제
- `URLSession.dataTask(_:)`의 `@escaping Closure` 부분은 비동기로 처리됩니다. 해당 클로저 내부에는 Result 타입을 통해 성공 케이스와 실패 케이스가 분류되는데, 저희는 해당 결과에 대하여 Alert을 통해 결과를 사용자에게 표출하였습니다. 그런데, Alert은 결국 UI를 구현하는 부분이기 때문에, main thread에서 호출되어야 합니다. 이때문에 저희는 alert을 present, dismiss 등 화면에 영향을 주는 부분에서 DispatchQueue.main.async를 통해 main thread에서 비동기적으로 처리해주었습니다. 여기에 의문점은 아래의 presentConfirmAlert 메서드에 관하여, 함수 내부 구현부 모두를 DispatchQueue에 모두 넣어야 하는지, 아니면 dismiss, pop, present와 같은 화면에 영향을 주는 영역만 DispatchQueue에 넣어야 하는지 고민하였습니다. 저희는 결국 화면 전환과 관련된 부분만 DispatchQueue에 넣어야 하는 것이 적절하다고 판단하였습니다.

    
```swift
func presentConfirmAlert(message: String) {
    let alertController = UIAlertController(title: AlertSetting.controller.title,
                                               message: message,
                                                preferredStyle: .alert)
        
    DispatchQueue.main.async {
        let confirmAction = UIAlertAction(title: AlertSetting.confirmAction.title,
                                             style: .default) { [weak self] _ in
                
            switch AlertMessage(rawValue: message) {
            case .enrollmentSuccess, .modificationSuccess:
                self?.dismiss(animated: true)
            case .deleteSuccess:
                self?.navigationController?.popViewController(animated: true)
            default:
                break
            }
        }
            
        alertController.addAction(confirmAction)
        self.present(alertController,
                        animated: false)
    }
}
```
    
## 📚 참고문서

- [Data Entry - iOS - Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/patterns/entering-data/)
- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)
--- 
    
## 1️⃣ STEP 1

### STEP 1 Questions & Answers

#### Q1. ScrollView AutoLayout 관련 질문
    
- rootScrollView 내에 rootStackView를 삽입하는 코드를 아래와 같이 추가해보았습니다.

- 코드

    ```swift
    NSLayoutConstraint.activate([
        rootStackView.topAnchor.constraint(equalTo: rootScrollView.topAnchor),
        rootStackView.leadingAnchor.constraint(equalTo: rootScrollView.leadingAnchor),
        rootStackView.trailingAnchor.constraint(equalTo: rootScrollView.trailingAnchor),
        rootStackView.bottomAnchor.constraint(equalTo: rootScrollView.bottomAnchor)
    ])
    ```


- rootStackView의 top, bottom, trailng, leading constraint을 설정함에 있어서 rootScrollView를 기준으로 설정해보았습니다. 시뮬레이터와 view hierachy를 통해 UI 구현 결과를 확인해보니, rootScrollView.contentLayoutGuide를 바탕으로 제약을 설정했을 때와 동일하게 constraint가 잡힌 것이란 생각이 들었습니다.

- 코드

    ```swift
    rootStackView.widthAnchor.constraint(equalTo: rootScrollView.widthAnchor).isActive = true
    ```

- 반면, rootStackView의 width constraint를 설정할 때는 rootScrollView 기준을 설정할 때의 UI 구현 결과를 확인해보니, rootScrollView.contentLayoutGuide이 아닌 rootScrollView.frameLayoutGuide를 바탕으로 제약을 설정했을 때와 동일한 결과를 보여주었습니다.

- 정리해보자면, top, bottom, leading, trailing의 경우 rootScrollView에 제약을 설정할 때는, rootScrollView.contentLayoutGuide를 사용하여 제약을 설정하고, width의 경우 rootScrollView에 제약을 설정할 때는, rootScrollView.frameLayoutGuide를 사용하여 제약을 설정한다고 판단하였습니다.

- 이에, 저희의 판단이 맞는 것인지 궁금하고, 만일 그러하다면, 왜 default 값이 frameLayoutGuide, contentLayoutGuide로 서로 다르게 설정되어 있는지 여쭈어보고 싶습니다.

#### A1. ScrollView AutoLayout 관련 질문
    
- 레이아웃 값에 따라 디폴트로 어쩔 때는 frameLayoutGuide를 따르고 어쩔 때는 contentLayoutGuide를 따르는지 모르겠고, 실제로 그런게 있는지도 잘 모르겠다는 의견을 받았습니다.
- 이를 알아보는 것은 매우 험난한 과정이므로, 정확한 레이아웃 값을 주는 것이 최선의 방법임을 깨달았습니다. contentLayoutGuide이 필요한 부분이면 잘 적용되게 코드를 추가하고, frameLayoutGuide이 필요한 필요한 부분이면 또 잘 적용되게 코드를 추가한다면 본인의 생각에 맞는 오토레이아웃을 설정하는데 도움이 될 것임을 알게 되는 계기가 되었습니다.
    
## 2️⃣ STEP 2

### STEP 2 Questions & Answers

#### Q1. POST 시 Requried Parameters 관련 질문
    
- 상품 등록은 POST 메서드를 통하여 진행됩니다. 오픈마켓 API를 확인해보니 상품 등록에 관하여 Request Body의 Params를 살펴보니, name, descriptions, price, currency, secret은 required 체크가 되어있었고, discounted_price, stock은 requried 체크가 되어 있지 않았습니다. 즉, 전자의 파라미터의 경우는 서버 등록을 위해서 필수적인 파라미터이므로, 이를 하나라도 값을 누락한다면, 서버로 상품 등록이 안 될 것이라고 생각하였습니다. 하지만, POSTMAN과 오픈 마켓 어플리케이션을 통해 확인해본 결과, description에 값을 할당하지 않은 상태임에도 서버로 POST가 되었고, GET 또한 이루어지는 것을 발견하였습니다. 이를 어플리케이션 내 상품 상세 페이지에서 UI를 구현하고자 했을 때는, 데이터가 정상적으로 들어오지 않아 빈 화면을 출력하였습니다. 
- 이에 저희는 두 가지 의문점을 제기하고 싶습니다. 먼저, 필수 요소로 선언된 파라미터를 사용하지 않고도 서버에 상품이 등록될 수 있는지 질문드리고 싶고, 그렇다면 이를 어떻게 정상적으로 상품 상세 페이지에 출력해야하는지 여쭈어 보고 싶습니다.
