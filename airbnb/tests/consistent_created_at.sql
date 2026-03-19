select * from {{ ref('dim_listings_cleansed') }} list
inner join {{ ref('fct_reviews') }} reviews 
using (listing_id) 
where list.created_at > reviews.review_date