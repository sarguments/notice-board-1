-- 유저권한 설정--
INSERT INTO role (authority)
VALUES ('ADMIN');
INSERT INTO role (authority)
VALUES ('USER');
-- 유저권한 설정 끝 --

-- 샘플 유저 --
INSERT INTO user (email, password, nick_name)
VALUES ('admin@notice.com', '$2a$10$PP2QsDhRgXnLdRsR5TpL0.s/DodmN7UAT/1Ono6saTpb.WIJYt4BC', '관리자');
INSERT INTO user_role (user_id, role_id)
VALUES (1, 1);
INSERT INTO user_role (user_id, role_id)
VALUES (1, 2);

INSERT INTO user (email, password, nick_name)
VALUES ('siyoon210@gmail.com', '$2a$10$PP2QsDhRgXnLdRsR5TpL0.s/DodmN7UAT/1Ono6saTpb.WIJYt4BC', '시윤');
INSERT INTO user_role (user_id, role_id)
VALUES (2, 2);

INSERT INTO user (email, password, nick_name)
VALUES ('hong@naver.com', '$2a$10$PP2QsDhRgXnLdRsR5TpL0.s/DodmN7UAT/1Ono6saTpb.WIJYt4BC', '홍길동');
INSERT INTO user_role (user_id, role_id)
VALUES (3, 2);
-- 샘플 유저 끝 --

-- 공지사항 샘플--
INSERT INTO notice_content (content)
VALUES ('공지사항에 대한 자세한 내용은 이부분에 적어주세요.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('이곳은 공지사항 게시판입니다.', 1, 1, '2019-04-04 21:18:18.076000', '2019-04-04 21:18:18.076000');

INSERT INTO notice_content (content)
VALUES ('끝까지 힘내서 마무리 하겠습니다!');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알 서포트 과제 제출일까지 2일 남았습니다.', 2, 2, '2019-04-06 08:18:18.076000', '2019-04-06 08:18:18.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트는 세계 최초로 웹과 아이콘을 이용한 원격 제어 시스템의 특허 기술을 상용화한 이래로 원격 지원, 원격 제어 기술의 세계 표준을 만들어왔습니다. 뛰어난 기술력을 바탕으로 수많은 특허를 획득하였고, 세계 시장에서 지적재산권으로 보호받고 있습니다.
알서포트는 일본 시장 점유율 1위 기업으로 자리 잡았고, 미국과 중국에 법인을 설립해 현지 최고 수준의 업체들과 차례로 협업 관계를 맺으며 글로벌 서비스 기업으로 성장하고 있습니다. 이미 몇 년 전부터 매출의 절반 이상을 해외에서 달성하고 있는 것은 그리 놀라운 사실이 아닙니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알 서포트의 회사 소개', 3, 2, '2019-04-06 08:24:28.076000', '2019-04-06 08:24:28.076000');

INSERT INTO notice_content (content)
VALUES ('리모트콜은 고객들에게 편안하고 빠른 원격 지원 서비스를 제공하는 기업용 솔루션입니다. 초고속 인터넷 장애 상담에 리모트콜 서비스를 도입한 B사는 연간 270억 원이라는 놀라운 경비 절감 효과를 냈습니다. 이렇게 절감한 비용은 수익 향상, 서비스 품질 개선, 고객을 위한 재투자로 이어집니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('40분을 5분으로 단축시킨 비결 : 리모트콜', 4, 2, '2019-04-06 08:24:28.076000', '2019-04-06 08:24:28.076000');

INSERT INTO notice_content (content)
VALUES ('리모트뷰는 언제 어디서나 내 PC를 제어할 수 있는, 개인/기업용 원격 제어 솔루션입니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('리모트뷰가 드리는 15일의 휴가', 5, 1, '2019-04-06 08:34:28.076000', '2019-04-06 08:34:28.076000');

INSERT INTO notice_content (content)
VALUES ('리모트미팅은 가장 쉽고 빠르게 온라인미팅을 시작할 수 있는 새로운 화상회의 솔루션입니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('회의효과 VS 비용절감 : 리모트미팅', 6, 1, '2019-04-06 08:44:28.076000', '2019-04-06 08:44:28.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트는 더 쉽고 편리한 사용 환경(Interface), 철저한 보안(Security), 국제 표준 기술(Global Standard) 정립으로 개개인의, 기업 간의 차이(Gap)를 줄이고자 합니다. 고객이 좋아하고 감동받을 만한 제품 개발로 건강한 인터넷 생태계 조성에 앞장서겠습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('클라우드 시장을 선도하는 트렌드 리더 알서포트', 7, 3, '2019-04-07 08:44:28.076000', '2019-04-07 08:44:28.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트를 사랑해주시는 여러분께 진심으로 감사의 말씀을 드립니다. 알서포트는 지난 10여 년 동안 끊임없는 기술적 혁신과 비즈니스 확대에 대한 노력으로 아시아 원격 솔루션 시장에서 독보적 1위를 차지한 것은 물론, 글로벌 TOP5 중 가장 촉망 받는 기업으로 성장해왔습니다. 고객 여러분의 믿음이 있었기에 알서포트는 빠르게 변화하는 시장에서 꾸준히 성장할 수 있었습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('기술력과 도전 정신으로 무장한 알서포트, 세계로 발돋움하는 대한민국 기술 선도 기업입니다', 8, 3, '2019-04-07 08:54:28.076000',
        '2019-04-07 08:54:28.076000');

INSERT INTO notice_content (content)
VALUES ('PC, 모바일, 나아가 모든 IT기기가 소통하는 세상이 바로 알서포트가 꿈꾸는 미래입니다. 모든 것이 하나로 통하는 세상, 소통과 화합이 가득한 세상, 그 중심에서 원격 기술의 선두주자로서 알서포트가 자리매김하겠습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트의 비전은 ‘easy IT, easy LIFE’입니다.', 9, 2, '2019-04-07 09:24:28.076000', '2019-04-07 09:24:28.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트는 국제어린이양육기구 한국컴패션과 원격지원 기술제휴 협력에 관한 업무협약을 체결하였습니다. 한국컴패션은 알서포트에서 제공받은 솔루션을 통해 후원자 및 자원봉사자 PC원격지원, 컴패션 내 PC 및 모바일 앱 원격지원을 할 수 있게 됩니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('다양한 사회공헌을 통해 아름다운 세상을 만들기 위해 노력합니다', 10, 3, '2019-04-07 09:27:28.076000', '2019-04-07 09:27:28.076000');

INSERT INTO notice_content (content)
VALUES ('굿네이버스는 회원들이 후원금 결제 시 문제가 생겼을 때 PC나 스마트폰에 원격 접속해 이를 도와줄 수 있게 되며, 내부 직원들의 PC 관리와 해외지부의 원격 지원 등의 용도에 리모트콜 모바일팩을 사용하게 됩니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('굿네이버스와의 원격지원 서비스 기술 제휴를 통해 NGO 단체의 활동을 지원합니다.', 11, 1, '2019-04-07 09:29:38.076000',
        '2019-04-07 09:29:38.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트는 향후 아름다운가게와의 협력관계를 공고히 하여, 정기적 자원활동과 ‘나눔과 순환’의 정신을 함께 알리는데 적극적으로 동참하고 기업의 사회적 책임을 다하는데 앞장설 예정입니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트는 국내 대표적인 사회적 기업인 ‘아름다운 가게’와 제품지원 협약과 임직원 물품기증 및 판매자원활동을 하였습니다.', 12, 1, '2019-04-07 09:39:38.076000',
        '2019-04-07 09:39:38.076000');

INSERT INTO notice_content (content)
VALUES ('앞으로도 알서포트는 청년 실업을 줄이고 ICT인력난을 해소할 수 있도록 앞장서겠습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('미래 ICT 인재 육성에 힘을 보태고 있습니다.', 13, 1, '2019-04-07 09:49:38.076000', '2019-04-07 09:49:38.076000');

INSERT INTO notice_content (content)
VALUES ('관련 환경 단체에 알서포트의 제품을 기증하여 더 원활한 업무활동이 진행되도록 돕고 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('매출액의 일부를 WRI(World Resources Institute)에 기부하여, 고객과 함께 환경 운동에 동참할 수 있도록 지원합니다.', 14, 1,
        '2019-04-07 09:59:38.076000', '2019-04-07 09:59:38.076000');

INSERT INTO notice_content (content)
VALUES ('알서포트의 구성원 역시 우리의 원격지원 및 제어서비스를 통해 업무와 개인의 삶의 균형을 유지하고 있습니다. 또한 전문적이고 개인적인 업무 개발 프로그램과 외부 교육을 통하여 직원들의 자기계발을 지원하고 있습니다.
알서포트와 함께 하고 싶으세요? 열정과 도전정신으로 알서포트의 문을 두드려보세요.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('원격지원, 원격제어 제품군은 언제 어디서든 업무를 진행할 수 있는 환경을 만들 수 있도록 도와드립니다.', 15, 3, '2019-04-07 10:09:38.076000',
        '2019-04-07 10:09:38.076000');

INSERT INTO notice_content (content)
VALUES ('파트너의 성공이 알서포트의 성공입니다. 알서포트의 우수한 제품을 세상에 함께 선보이는 긴밀한 파트너십을 제안합니다. 원격 및 클라우드 소프트웨어 시장은 가파른 성장추이를 보이는 매력적인 시장으로, 알서포트는 글로벌 TOP 5 및 아시아 시장 1위 기업으로서 위상을 수 년째 지켜나가고 있으며, TOP 5 기업 중 가장 높은 성장률을 나타내고 있습니다. 알서포트의 파트너 프로그램에 참여하셔서 귀사의 비즈니스를 성장시키고 시장 경쟁력을 강화하시길 바랍니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('언제나 신뢰할 수 있는 든든한 동반자가 되겠습니다.', 16, 2, '2019-04-07 10:19:38.076000', '2019-04-07 10:29:38.076000');

INSERT INTO notice_content (content)
VALUES ('단순한 판매를 통한 수익 공유뿐만 아니라 사업 계획에서 고객 관리까지 철저하게 이어지는 협력 강화 모델입니다. 또한 기술적인 역량 강화, 판매 노하우 등을 정기 컨퍼런스와 교육 진행 과정을 통해 전달함으로써 파트너사의 기술 및 마케팅 역량 강화에 도움을 드리고 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트는 파트너사와 같이 성장할 수 있는 다양한 프로그램을 제공하고 있습니다.', 17, 1, '2019-04-07 10:31:38.076000',
        '2019-04-07 10:31:38.076000');

INSERT INTO notice_content (content)
VALUES ('전원이 꺼져 있는 컴퓨터나 서버의 전원을 켜야 할 때 누군가의 도움 없이도 언제 어디서나 원격지 컴퓨터의 전원을 켤 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('원격지 컴퓨터의 전원을 켜는 손쉬운 방법 리모트 WOL', 18, 1, '2019-04-07 10:33:38.076000', '2019-04-07 10:34:38.076000');

INSERT INTO notice_content (content)
VALUES ('언제든지 컴퓨터, 서버의 전원을 켤 수 있기 때문에 항상 전원을 켜둘 필요가 없어 사무실의 전기 사용량을 크게 줄일 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('리모트WOL 을 사용하는 가장 큰 이점 중 하나는 회사의 운영비용을 절감할 수 있다는 것입니다.', 19, 2, '2019-04-07 10:53:38.076000',
        '2019-04-07 10:54:38.076000');

INSERT INTO notice_content (content)
VALUES ('조직의 중요한 업무가 예상치 못한 정전, 재난 등으로 중단될 경우, 리모트WOL 기능을 이용하여 빠르게 복구 할 수 있습니다.이는 당신의 조직에 업무 연속성을 유지할 수 있도록 도와줍니다.
리모트WOL을 이용하면 당신의 기업에 예기치 못한 업무 중단의 위험을 줄일 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('정전 대책에도 리모트WOL을!', 20, 3, '2019-04-07 11:13:38.076000', '2019-04-07 11:54:38.076000');

INSERT INTO notice_content (content)
VALUES ('라이트캠은 어떠한 환경에서도 PC, 모바일 화면을 HD화질로 선명하게 녹화하는 소프트웨어입니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('팔방미인 동영상 제작툴 라이트캠', 21, 1, '2019-04-07 11:23:38.076000', '2019-04-07 11:34:38.076000');

INSERT INTO notice_content (content)
VALUES ('아직도 사진을 찍고 글을 쓰십니까? 이제 방법을 바꿀 때입니다. 라이트캠과 함께 하는 순간, 콘텐츠 공유의 패러다임이 바뀝니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('라이트캠은 여러분의 디지털 라이프를 고스란히 담아내는 기록자 역할을 할 것입니다.', 22, 1, '2019-04-07 11:33:38.076000', '2019-04-07 11:34:38.076000');

INSERT INTO notice_content (content)
VALUES ('전세계에서 매월 인터넷 동영상을 시청하는 데 드는 시간은 무려 100억 시간. 매월 인터넷 동영상을 찾는 사람들은 10억 명이 넘습니다. 대한민국의 음악을 세계에 알린 싸이의 강남스타일처럼, 라이트캠과 함께 하는 당신도 스타가 될 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('동영상 공유까지 단 1분이면 됩니다.', 23, 2, '2019-04-07 12:33:38.076000', '2019-04-07 13:34:38.076000');

INSERT INTO notice_content (content)
VALUES ('쉽고 생생하게 메시지를 전달하는 데엔 동영상만한 방법이 없습니다. 문제는 만들기가 어렵다는 겁니다. 이제 걱정하지 말고 마음껏 동영상을 만드세요. 세상에서 가장 쉬운 동영상 제작 도구 라이트캠을 이용하세요.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('어려운 동영상 제작, 라이트캠이면 끝', 24, 2, '2019-04-07 13:33:38.076000', '2019-04-07 13:34:38.089000');

INSERT INTO notice_content (content)
VALUES ('모비즌은 스마트폰 화면을 손쉽게 영상으로 담아내도록 돕는 화면 녹화/편집 애플리케이션입니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('프리미엄 스크린 레코더, 모비즌', 25, 3, '2019-04-07 14:33:38.076000', '2019-04-07 14:44:38.089000');

INSERT INTO notice_content (content)
VALUES ('멀게만 느껴졌던 자동화 솔루션의 도입, TAAS와 함께 쉽고 간편한 모바일 테스트 자동화 서비스를 경험하세요.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('모바일 테스트 자동화 서비스, TAAS', 26, 1, '2019-04-08 00:33:38.036000', '2019-04-08 00:44:38.089000');

INSERT INTO notice_content (content)
VALUES ('개발자나 코딩에 의존하던 복잡하고 어려웠던 테스트 자동화 솔루션을 잊으세요. 전문 지식이 없더라도 모바일 기기를 다를 수만 있다면 테스트 스크립트를 작성하고, 테스트를 수행할 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('진입 장벽은 낮추었습니다', 27, 1, '2019-04-08 01:33:38.036000', '2019-04-08 01:44:38.089000');

INSERT INTO notice_content (content)
VALUES ('매번 반복되는 테스트와 수많은 디바이스에서의 동작 테스트는 TAAS에게 맡기고 더 다양한 테스트를 수행하세요. 수행되는 모든 테스트는 웹 페이지를 통해 진척률 및 결과를 확인하고 결함을 추적할 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('모바일 앱의 품질향상에 기여합니다', 28, 2, '2019-04-08 02:33:38.036000', '2019-04-08 02:44:38.089000');

INSERT INTO notice_content (content)
VALUES ('편리하게 벤치마킹이 가능합니다. 스케줄을 통해 기능 테스트를 수행해보세요. 서비스 장애 및 네트워크 부하 여부를 확인하실 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('경쟁 제품과 동일 조건에서 성능 비교 테스트를 해보세요.', 29, 2, '2019-04-08 03:53:38.036000', '2019-04-08 03:54:38.089000');

INSERT INTO notice_content (content)
VALUES ('알서포트의 이사회는 다음과 같이 구성되어 있습니다. 등기이사	서형수, 송 의, 한상준 기타비상무이사	코우즈키 타이키 감사	김영실');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트는 안정적인 성장과 수익을 추구하여, 주주의 행복과 기업 가치 극대화를 실현하겠습니다', 30, 3, '2019-04-08 04:53:38.036000', '2019-04-08 04:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('안녕하세요? 알서포트입니다. 항상 저희 서비스를 이용해 주시는 고객님께 감사드립니다.보다 좋은 서비스를 위해 다음과 같이 4월 시스템 정기 점검을 진행하고자 하오니 고객님의 양해를 부탁드립니다. 작업 예정 시간 동안 대상 서비스 이용 시, 일시적으로 접속이 원활하지 않을 수 있사오니 서비스 이용에 참고하시기 바랍니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('4월 시스템 정기 점검 작업 안내 (2019년 4월 16일 예정)', 31, 2, '2019-04-08 05:54:38.036000', '2019-04-08 05:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('바른 생각, 창의 도전, 성실 인재, 나눔 경영');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트 인재라면, 믿고 실천합니다. 네 가지 핵심가치', 32, 2, '2019-04-08 06:54:38.036000', '2019-04-08 06:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('알서포트의 열린 조직문화는 ‘인재 중심’에서 시작됩니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('Why Rsupport?', 33, 1, '2019-04-08 07:54:38.036000', '2019-04-08 07:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('바른생각과 주인의식을 바탕으로 창의적으로 도전하는 성실한 인재에게는 무한한 성장의 기회를 제공합니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('나이와 연차가 아닌, 각 개인의 성과와 열정으로 인정받는 유연한 조직입니다.', 34, 3, '2019-04-08 08:54:38.036000', '2019-04-08 08:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('매달 베스트셀러와 임직원의 추천도서를 제공함으로써 알서포트인이 창의적 인재로 성장하도록 지원합니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('임직원이 전공지식 뿐만 아니라 인문학적 소양을 키울 수 있도록 다양한 도서를 제공합니다', 35, 3, '2019-04-08 09:54:38.036000', '2019-04-08 09:55:38.089000');

INSERT INTO notice_content (content)
VALUES ('부지런한 알서포트인을 위해 매일 아침 신선한 먹을거리와 간식거리를 제공합니다. 알서포트 임직원만이 이용할 수 있는 음료 자판기까지!');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트는 임직원에게 최상의 서비스를 제공하기 위해 노력합니다.', 36, 2, '2019-04-08 9:55:38.036000', '2019-04-08 09:56:38.089000');

INSERT INTO notice_content (content)
VALUES ('알서포트는 올림픽공원 맞은 편에 위치하여 매일 멋진 뷰를 감상할 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('사시사철 변하는 올림픽공원을 내려다 보며 여러분의 머리와 마음도 쉬어갈 수 있습니다.', 37, 1, '2019-04-08 9:56:38.036000', '2019-04-08 09:57:38.089000');

INSERT INTO notice_content (content)
VALUES ('탁구는 물론 플레이스테이션, 보드게임으로 동료들과 리프레쉬하는 시간을 즐기는 여유, 알서포트에서 누릴 수 있습니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('알서포트인은 동료와 함께 운동하고 휴식하며 창의력을 키워갑니다.', 38, 3, '2019-04-08 9:57:38.036000', '2019-04-08 09:58:38.089000');

INSERT INTO notice_content (content)
VALUES ('1차 면접은 직무에 대한 기술적인 면접을 진행합니다.');
INSERT INTO notice (title, notice_content_id, user_id, register_date, modify_date)
VALUES ('글로벌 TOP을 향해 함께 성장할 인재를 모집합니다.', 39, 2, '2019-04-08 9:58:38.036000', '2019-04-08 09:59:38.089000');

