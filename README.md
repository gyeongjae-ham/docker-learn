## 목차

### Docker image Container: Core building

1. 사전 빌드된 이미지 사용
2. Nodejs 이미지 사용하기
3. Dockerfile로 자체 이미지 빌드
4. 자체 이미지 기반으로 컨테이너 실행하기
5. EXPOSE & 약간의 유틸리티 기능
6. 이미지 레이어 이해하기
7. 실행중인 컨테이너 연결
   1. `docker run`으로 실행하면 기본 attach 모드
   2. `docker start`로 실행하면 기본 detach 모드
   3. `attach`된 상태라면 콘솔에 로그를 남길 경우 터미널에 찍힌다
8. 인터렉티브 모드로 들어가기
9. 이미지 & 컨테이너 삭제
10. 컨테이너에/컨테이너로부터 파일 복사하기
    1. `docker cp {복사하려는 파일} {컨테이너네임}:복사하려는 위치`
    2. `docker cp {컨테이너네임}:복사하려는 파일 {복사하려는 위치}`
11. 컨테이너와 이미지에 이름 지정 & 태그 지정하기

### 데이터 관리 및 볼륨으로 작업하기

1. named 볼륨으로 구조하기
2. 익명 볼륨 제거하기
3. 바인드 마운트 시작하기(코드 공유)
4. 바인드 마운트 - 바로 가기(shortcuts)
5. 다른 볼륨 결합&병합하기
   1. named 볼륨을 한 상태라면 `Dockerfile`의 `COPY` 명령을 사용한 상태에서 바인드 마운트를 하면 로컬의 내용으로 해당 내용들을 다 덮어버린다
   2. 때문에 `RUN` 명령어로 생성됐던 `node-modules`도 전부 사라지게 된다
   3. 익명 볼륨을 통해 해당 컨테이너 내부에 이미 일부 파일이 있음을 알려줘야 한다
6. Nodejs 특화 : 컨테이너에서 Nodemon 사용하기
7. 읽기 전용 볼륨 살펴보기
8. Docker 볼륨 관리하기
9. COPY 사용 vs 바인드 마운트 사용
10. dockerignore 파일 사용하기
11. .dockerignore 파일에 추가하기
12. 환경변수 & .env 파일 작업
    1. `--env or -e로 실행 시 환경변수를 설정하거나 Dockerfile 안에 ENV로 설정하기`
    2. `.env` 파일로 생성해서 설정한 후 `실행 시 --env-file로 환경변수 파일 지정`
13. 환경변수 & 보안
14. 빌드 인수 사용하기

### 네트워킹: (교차) 컨테이너 통신

1. 컨테이너 외부 API 통신
2. 컨테이너와 로컬 호스트 통신
3. 컨테이너 간 통신 - 기본 솔루션
4. 컨테이너 간 통신 - docker network
5. Docker가 IP주소를 해결하는 방법

### Docker로 다중 컨테이너 애플리케이션 구축하기

1. MongoDB 서비스 도커화 하기
2. Node 앱 도커화 하기
3. React SPA 컨테이너로 옮기기
   1. `React` 앱의 경우 실행할 때 `-it` 옵션으로 명령어로 상호작용하도록 설정해줘야 한다
4. Docker network 구성하기
5. Volume으로 MongoDB에 데이터 지속성 추가하기
6. NodeJS 컨테이너의 볼륨, 바인딩 마운트 및 폴리싱(Polishing)
7. 바인드 마운트로 React 컨테이너에 대한 라이브 소스 업데이트 하기

### Dokcer Compose: 다중 컨테이너 오케스트레이션

1. Docker-Compose : 무엇이며 왜 사용하는가
2. Compose 파일 만들기
3. Compose 파일 구성(Configuration) 자세히 알아보기
4. Docker Compose Up과 Down
5. 다중 컨테이너로 작업하기
6. 또 다른 컨테이너 추가하기
7. 이미지 빌드 & 컨테이너 이름 이해하기

### 유틸리티 컨테이너로 작업하기 & 컨테이너에서 명령 실행하기

### Docker & 컨테이너 배포하기

### Docker & 컨테이너 요약

### Kubernetes 시작하기

### 실전 Kubernetes - 핵심 개념 알아보기

### Kubernetes로 데이터 & 볼륨 관리하기

### Kubernetes 네트워킹

### Kubernetes 배포
