select 
    * 
    from {{ ref('fct_reviews') }} f
JOIN    
    {{ ref('dim_listings_cleansed') }} d
USING (listing_id)
    where d.created_at >= f.review_date