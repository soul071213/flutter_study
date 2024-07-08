import 'package:flutter_book_list/models/book.dart';

class BookRepository{
  final List<Book> _dummyBooks=[
    Book(title: '글로벌 기업 재무제표로 알아보는 비즈니스 모델 분석', 
    subtitle: '비즈니스 모델을 재무제표로 분석한다!', 
    description: '재무제표를 도식이나 그래프로 풀이하여 시각적으로 데이터를 이해할 수 있습니다. 한 번에 많은 회사의 재무제표를 접할 수 있도록 41개의 기업 사례를 분석하여 제공합니다. 책에서 다루는 회사의 경영방식을 유형화하여 각 챕터를 구성하였고, 사례별 주요 포인트를 정리하여 누구나 쉽게 이해할 수 있도록 만들었습니다.', 
    image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FciLeQi%2FbtsIlDvpNbm%2FlQAtM6hfTqABHUBS1gTUik%2Fimg.png',)
    ,Book(title: '안드로이드 모의해킹 입문', 
    subtitle: '화이트 해커를 꿈꾸는 당신을 위한안드로이드 모의해킹 길잡이', 
    description: '우리는 수많은 앱을 사용하여 편리한 생활을 즐기고 있습니다. 하지만 이토록 편리한 앱의 이면에는 언제나 보안 위협이 존재합니다. 내가 사용하고 있는 안드로이드 앱의 보안 위협을 자세히 알고 싶나요? 『안드로이드 모의해킹 입문』에서 안내하는 보안 취약점 진단 방법을 따라해보세요. 진단에 그치지 않고 대응 방안까지 차근차근 살피다보면 어느새 보안 진단가로 한 발짝 내딛은 자신을 만날 수 있습니다.', 
    image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FeETnWn%2FbtsIeFGH689%2FmsOENhNLoWsApNe5tV5fJ1%2Fimg.png',)
    ,Book(title: '의학 연구를 위한 R', 
    subtitle: '더 나은 데이터 매니지먼트 더 보기 좋은 연구 결과', 
    description: ' 의료 데이터는 특수한 도메인의 데이터이기 때문에 환자의 개인정보를 보호해야 한다는 민감성과 가설 수립부터 임상 적용까지의 과정 사이에 제약이 발생할 수 있다는 특이성을 수반합니다. 따라서 이에 대한 이해가 충분한 연구자만이 의료 데이터를 다룰 수 있습니다. 하지만 실제 의학 관련 연구를 진행하는 병원 구성원이나 메디컬 및 바이오 헬스케어 기업 관련자들, 그리고 공공 의료 기관의 연구원들에게는 프로그래밍 자체가 어색할 수 있습니다. 따라서 의학 연구자에게 도움이 될 수 있도록 의료 데이터를 다룰 때 꼭 필요한 R 프로그래밍만을 깔끔하게 담았습니다.', 
    image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fp4Wgd%2FbtsIdiEE5vs%2FXTKD5tKJo5NDSLNtyDhbkK%2Fimg.jpg',)
    ,Book(title:  '레벨업 리액트 프로그래밍 with Next.js', 
    subtitle: '근본과 정도를 지휘하는 현대적 접근 리액트의 정석과 넥스트JS피디아를 한 번에 맛보다', 
    description: ' 리액트는 여전히 전 세계에서 가장 인기 있는 프레임워크로 자리잡고 있습니다. 그리고 갑작스레 떠올라 국내 웹 생태계에 정착한 Next.js는 서버 사이드 렌더링(SSR) 방식의 회귀를 증명했습니다. 이 책과 함께 웹과 프레임워크의 역사, 앱의 작동 원리, 렌더링 방식과 실행 구조에 대해 속속들이 살펴보며 리액트 개발자로서의 기반을 탄탄하게 다져봅시다. 그리고 Next.js 기술의 활용 방법을 예시 코드와 실습 문제로 익히며 실력을 쑥쑥 키워봅시다. 차트 중심 대시보드, AI 챗봇을 통합하는 웹앱, 전자 상거래 사이트를 직접 제작해보는 경험은 실무에서의 든든한 발판이 되어줄 것입니다.', 
    image:  'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fc4IeaO%2FbtsHHkCOU0A%2FLbEkhbe8X76Sa3WtjFKXZK%2Fimg.jpg',)
  ];

  List<Book> getBooks(){
    return _dummyBooks;
  }
}