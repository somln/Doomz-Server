USE dormitoryfamily;

ALTER TABLE lifestyle MODIFY COLUMN sleep_time_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN wake_up_time_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN sleeping_habit_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN sleeping_sensitivity_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN smoking_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN drinking_frequency_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN shower_time_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN shower_duration_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN cleaning_frequency_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN heat_tolerance_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN cold_tolerance_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN mbti_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN visit_home_frequency_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN late_night_snack_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN snack_in_room_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN phone_sound_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN perfume_usage_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN study_location_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN exam_preparation_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN exercise_type VARCHAR(50);
ALTER TABLE lifestyle MODIFY COLUMN insect_tolerance_type VARCHAR(50);

INSERT INTO lifestyle (member_id, sleep_time_type, wake_up_time_type, sleeping_habit_type, sleeping_sensitivity_type,
                       smoking_type, drinking_frequency_type, shower_time_type, shower_duration_type,
                       cleaning_frequency_type, heat_tolerance_type, cold_tolerance_type, mbti_type, visit_home_frequency_type,
                       late_night_snack_type, snack_in_room_type, phone_sound_type, perfume_usage_type,
                       study_location_type, exam_preparation_type, exercise_type, insect_tolerance_type, drunk_habit)
VALUES
    ((SELECT member_id FROM member WHERE name = 'test_홍길동(진리관)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', NULL, '_05', 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, NULL, 'SOMETIMES', 'ALLOWED', NULL, 'SOMETIMES', NULL, 'PREPARING', 'GYM', NULL, '취침 후에 말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_김영희(정의관)'), '_2300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'INFJ', NULL, 'OFTEN', 'NOT_ALLOWED', 'SPEAKER', 'OFTEN', 'OFF_DORMITORY', 'PREPARING', NULL, 'SMALL_ONLY', '소란 피움'),
    ((SELECT member_id FROM member WHERE name = 'test_이철수(개척관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', NULL, NULL, 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'ISFP', 'RARELY', 'NEVER', 'ALLOWED', NULL, 'OFTEN', NULL, 'NONE', 'DORMITORY', 'CANNOT', '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_박민수(계영원)'), 'BEFORE_2100', 'BEFORE_0500', 'SLEEP_TALKING', 'LIGHT', 'SMOKER', 'NONE', NULL, '_10', 'IMMEDIATELY', 'HIGH', 'HIGH', 'ESTJ', NULL, 'SOMETIMES', 'ALLOWED', 'VARIABLE', 'OFTEN', NULL, 'PREPARING', 'NONE', 'EXPERT', '술 먹고 춤 춤'),
    ((SELECT member_id FROM member WHERE name = 'test_정수진(지선관)'), '_0100', '_0900', 'SNORING', 'LIGHT', 'NON_SMOKER', 'FREQUENT', NULL, '_15', 'OCCASIONALLY', 'MEDIUM', 'MEDIUM', 'ISTP', NULL, NULL, 'ALLOWED', 'SPEAKER', 'SOMETIMES', NULL, 'NONE', 'GYM', 'SMALL_ONLY', '소리지름'),
    ((SELECT member_id FROM member WHERE name = 'test_오세진(명덕관)'), 'BEFORE_2100', '_0700', 'NONE', 'DARK', 'NON_SMOKER', 'REGULAR', 'MORNING', '_20', 'ALL_AT_ONCE', 'HIGH', 'LOW', 'ENFJ', 'EVERY_WEEK', 'OFTEN', 'NOT_ALLOWED', 'EARPHONES', 'OFTEN', 'VARIABLE', 'PREPARING', NULL, 'SMALL_ONLY', '혼잣말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_이정환(신민관)'), '_0200', '_0800', 'SLEEP_TALKING', 'LIGHT', 'SMOKER', 'FREQUENT', 'EVENING', NULL, 'OCCASIONALLY', 'LOW', 'HIGH', 'INTJ', 'RARELY', 'OFTEN', 'ALLOWED', 'VARIABLE', 'NONE', 'DORMITORY', 'NONE', 'GYM', 'EXPERT', '웃음소리 큼'),
    ((SELECT member_id FROM member WHERE name = 'test_김민지(인의관)'), '_0300', '_0600', 'SNORING', 'DARK', 'NON_SMOKER', 'NONE', 'MORNING', '_10', 'IMMEDIATELY', 'MEDIUM', 'MEDIUM', 'ENTJ', 'EVERY_2_3_MONTHS', 'OFTEN', 'ALLOWED', 'SPEAKER', 'SOMETIMES', 'OFF_DORMITORY', 'PREPARING', 'GYM', 'CANNOT', '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_박지훈(예지관)'), '_2200', '_0700', 'SLEEP_TALKING', 'LIGHT', 'SMOKER', 'FREQUENT', 'EVENING', NULL, 'ALL_AT_ONCE', 'HIGH', 'LOW', NULL, 'RARELY', 'SOMETIMES', 'ALLOWED', 'EARPHONES', 'OFTEN', 'DORMITORY', 'PREPARING', 'NONE', NULL, '울음소리 큼'),
    ((SELECT member_id FROM member WHERE name = 'test_강수진(등용관)'), 'BEFORE_2100', 'BEFORE_0500', 'SNORING', 'DARK', 'NON_SMOKER', 'REGULAR', 'MORNING', '_20', 'OCCASIONALLY', 'MEDIUM', 'MEDIUM', NULL, 'EVERY_WEEK', NULL, 'NOT_ALLOWED', NULL, 'NONE', 'DORMITORY', 'PREPARING', 'GYM', NULL, NULL),
    ((SELECT member_id FROM member WHERE name = 'test_이민호(진리관)'), '_0100', '_0800', 'SLEEP_TALKING', 'LIGHT', 'SMOKER', 'NONE', NULL, NULL, 'IMMEDIATELY', 'HIGH', 'HIGH', 'ENTP', 'EVERY_2_3_MONTHS', 'OFTEN', 'NOT_ALLOWED', 'SPEAKER', 'SOMETIMES', 'OFF_DORMITORY', 'PREPARING', 'GYM', 'EXPERT', '장난침'),
    ((SELECT member_id FROM member WHERE name = 'test_김하늘(정의관)'), '_2200', '_0700', 'SNORING', 'DARK', 'NON_SMOKER', 'FREQUENT', 'MORNING', '_25', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'ENFJ', 'RARELY', 'NEVER', 'NOT_ALLOWED', 'VARIABLE', 'SOMETIMES', NULL, 'PREPARING', 'GYM', 'SMALL_ONLY', '웃음소리 큼'),
    ((SELECT member_id FROM member WHERE name = 'test_박철수(개척관)'), '_2400', '_0600', 'SLEEP_TALKING', 'LIGHT', 'SMOKER', 'NONE', 'EVENING', NULL, 'OCCASIONALLY', 'HIGH', 'LOW', 'ISTP', NULL, 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'SOMETIMES', 'DORMITORY', 'NONE', 'GYM', 'CANNOT', '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_홍서연(계영원)'), 'BEFORE_2100', '_0800', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', 'MORNING', '_10', 'IMMEDIATELY', 'MEDIUM', 'MEDIUM', NULL, 'EVERY_2_3_MONTHS', 'NEVER', 'ALLOWED', NULL, 'SOMETIMES', 'DORMITORY', 'PREPARING', 'GYM', 'EXPERT', '취침 후에 말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_최민수(지선관)'), '_0300', '_0600', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'NONE', 'MORNING', NULL, 'IMMEDIATELY', 'LOW', 'MEDIUM', 'ENTJ', 'RARELY', 'SOMETIMES', 'NOT_ALLOWED', NULL, 'NONE', 'DORMITORY', 'PREPARING', 'GYM', NULL, '소란 피움'),
    ((SELECT member_id FROM member WHERE name = 'test_유리(명덕관)'), 'AFTER_0300', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', '_25', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'INFP', 'EVERY_2_3_MONTHS', 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'NONE', 'VARIABLE', 'PREPARING', 'GYM', 'EXPERT', '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_민혁(신민관)'), '_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'CANNOT', '울음소리 큼'),
    ((SELECT member_id FROM member WHERE name = 'test_민수(인의관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', NULL, '_25', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'INTP', 'RARELY', 'NEVER', 'ALLOWED', NULL, 'OFTEN', NULL, 'NONE', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_소희(예지관)'), '_0300', '_1100', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', NULL, '_15', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ESTJ', NULL, 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'NONE', NULL, 'PREPARING', 'GYM', 'SMALL_ONLY', '소리지름'),
    ((SELECT member_id FROM member WHERE name = 'test_진수(등용관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', NULL, 'NONE', 'DORMITORY', 'PREPARING', 'GYM', NULL, '술 먹고 춤 춤'),
    ((SELECT member_id FROM member WHERE name = 'test_현주(진리관)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', 'MORNING', '_25', 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, NULL, 'OFTEN', 'NOT_ALLOWED', 'VARIABLE', 'NONE', 'VARIABLE', 'PREPARING', 'GYM', NULL, '장난침'),
    ((SELECT member_id FROM member WHERE name = 'test_진혁(정의관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', 'EVENING', '_25', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', NULL, NULL, 'NEVER', 'ALLOWED', 'SPEAKER', 'OFTEN', 'OFF_DORMITORY', 'NONE', 'GYM', 'CANNOT', '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_가영(개척관)'), 'BEFORE_2100', '_0700', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', NULL, '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', NULL, 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_민재(계영원)'), '_0300', '_0800', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', NULL, '_10', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENFJ', NULL, 'SOMETIMES', 'NOT_ALLOWED', NULL, 'NONE', 'VARIABLE', 'PREPARING', 'GYM', 'SMALL_ONLY', '소란 피움'),
    ((SELECT member_id FROM member WHERE name = 'test_서진(지선관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', NULL, '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', NULL, 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_수빈(명덕관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', 'EVENING', '_10', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', NULL, 'RARELY', 'NEVER', 'ALLOWED', 'SPEAKER', 'OFTEN', NULL, 'NONE', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_준수(신민관)'), '_0300', '_0600', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', '_15', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENFP', 'EVERY_2_3_MONTHS', 'SOMETIMES', 'NOT_ALLOWED', NULL, 'OFTEN', 'OFF_DORMITORY', 'PREPARING', 'GYM', 'EXPERT', '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_유진(인의관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'CANNOT', '장난침'),
    ((SELECT member_id FROM member WHERE name = 'test_성민(예지관)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', 'EVENING', NULL, 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, 'EVERY_WEEK', 'OFTEN', 'NOT_ALLOWED', 'VARIABLE', 'OFTEN', 'VARIABLE', 'PREPARING', 'GYM', 'SMALL_ONLY', '소리지름'),
    ((SELECT member_id FROM member WHERE name = 'test_지훈(등용관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', 'EVENING', '_15', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'INTJ', 'RARELY', 'NEVER', 'ALLOWED', NULL, 'OFTEN', NULL, 'NONE', 'GYM', NULL, '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_예린(진리관)'), 'BEFORE_2100', '_0700', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', NULL, 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', NULL, 'NONE', 'DORMITORY', 'PREPARING', 'GYM', NULL, '울음소리 큼'),
    ((SELECT member_id FROM member WHERE name = 'test_수연(정의관)'), '_0300', '_1000', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', '_15', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENTJ', 'EVERY_2_3_MONTHS', 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'OFTEN', 'VARIABLE', 'PREPARING', 'GYM', NULL, '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_경민(개척관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', NULL, NULL, 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', NULL, 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'EXPERT', '혼잣말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_시윤(계영원)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', NULL, '_20', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'INFP', NULL, 'OFTEN', 'NOT_ALLOWED', 'VARIABLE', 'OFTEN', 'VARIABLE', 'PREPARING', 'GYM', 'SMALL_ONLY', '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_다빈(지선관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', 'EVENING', '_20', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'INTP', 'RARELY', 'NEVER', 'ALLOWED', 'SPEAKER', 'OFTEN', 'OFF_DORMITORY', 'NONE', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_재현(명덕관)'), '_0300', 'AFTER_1300', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', '_25', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENTP', NULL, 'SOMETIMES', 'NOT_ALLOWED', NULL, 'OFTEN', 'OFF_DORMITORY', 'PREPARING', 'GYM', 'SMALL_ONLY', '혼잣말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_은지(신민관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', 'EVERY_MONTH', 'OFTEN', 'ALLOWED', NULL, 'NONE', NULL, 'PREPARING', 'GYM', 'EXPERT', '술 먹고 춤 춤'),
    ((SELECT member_id FROM member WHERE name = 'test_유빈(인의관)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', NULL, NULL, 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENFP', NULL, 'OFTEN', 'NOT_ALLOWED', 'VARIABLE', 'OFTEN', 'VARIABLE', 'PREPARING', 'GYM', 'SMALL_ONLY', '취침 후에 말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_태훈(예지관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', NULL, NULL, 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'INTJ', 'RARELY', 'NEVER', 'ALLOWED', NULL, 'OFTEN', 'OFF_DORMITORY', 'NONE', 'GYM', 'EXPERT', '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_도연(등용관)'), '_0300', 'AFTER_1300', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', NULL, 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, NULL, 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'NONE', NULL, 'PREPARING', 'GYM', 'SMALL_ONLY', '잠꼬대 심함'),
    ((SELECT member_id FROM member WHERE name = 'test_하영(진리관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', 'ISFJ', NULL, 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'CANNOT', NULL),
    ((SELECT member_id FROM member WHERE name = 'test_주연(정의관)'), '_2200', '_0700', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'FREQUENT', 'EVENING', '_20', 'OCCASIONALLY', 'MEDIUM', 'HIGH', 'ENFJ', NULL, 'OFTEN', 'NOT_ALLOWED', 'VARIABLE', 'NONE', NULL, 'PREPARING', 'GYM', NULL, '취침 후에 말 많이 함'),
    ((SELECT member_id FROM member WHERE name = 'test_하준(개척관)'), '_2400', '_0800', 'TEETH_GRINDING', 'DARK', 'NON_SMOKER', 'OCCASIONAL', NULL, '_05', 'ALL_AT_ONCE', 'LOW', 'MEDIUM', 'INTP', 'RARELY', 'NEVER', 'ALLOWED', 'SPEAKER', 'OFTEN', 'OFF_DORMITORY', 'NONE', 'GYM', 'CANNOT', '말싸움'),
    ((SELECT member_id FROM member WHERE name = 'test_나연(계영원)'), '_0300', '_0800', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', NULL, 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, 'EVERY_2_3_MONTHS', 'SOMETIMES', 'NOT_ALLOWED', NULL, 'NONE', 'VARIABLE', 'PREPARING', 'GYM', 'SMALL_ONLY', '소란 피움'),
    ((SELECT member_id FROM member WHERE name = 'test_유나(지선관)'), 'AFTER_0300', '_0600', 'SNORING', 'LIGHT', 'SMOKER', 'REGULAR', 'MORNING', '_20', 'IMMEDIATELY', 'HIGH', 'LOW', NULL, 'EVERY_MONTH', 'OFTEN', 'ALLOWED', 'EARPHONES', 'NONE', 'DORMITORY', 'PREPARING', 'GYM', 'EXPERT', '술 먹고 춤 춤'),
    ((SELECT member_id FROM member WHERE name = 'test_재호(명덕관)'), '_0300', '_0800', 'SLEEP_TALKING', 'DARK', 'NON_SMOKER', 'NONE', 'EVENING', NULL, 'OCCASIONALLY', 'MEDIUM', 'HIGH', NULL, 'EVERY_2_3_MONTHS', 'SOMETIMES', 'NOT_ALLOWED', 'SPEAKER', 'NONE', NULL, 'PREPARING', 'GYM', NULL, NULL);
