with worklogs as (
	select 
	*
	from tempo.raw_worklogs
), formatted as (
	select 
		issue::json->>'id' issue_id,
		author::json->>'accountId' user_id,
		cast(startdate as date) logged_date,
		cast(billableseconds as integer) billable_seconds,
		cast(timespentseconds as integer) time_spent_seconds,
		description
	
	
	from worklogs

)

select * from formatted