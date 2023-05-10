WITH raw_reviews AS (
    SELECT
        *
    FROM
        reviews
)
SELECT
    LISTING_ID ,
	DATE as REVIEW_DATE,
	REVIEWER_NAME ,
	COMMENTS as REVIEW_TEXT,
	SENTIMENT as REVIEW_SENTIMENT
FROM
    raw_reviews