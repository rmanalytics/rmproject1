/* CLI gcloud */
1/ $ gcloud auth list 			= show the all the credential to run the project-9801
2/ $ gcloud config list project 	= shows the default project 
3/ $ gcloud -h					= show gcloud comamd available
3.1/ $ gcloud -help				= show gcloud comamd available
4/ $ gcloud config --help			= give help for particular like "Config commamnd"
5/ $ gcloud help config 			= ---- """"-----
6/ $ gcloud config list			= Show all the properties set so far on this project
7/ $ gcloud config list --all		= show all config properties including default
8/ export PS1 ='$'				= for changing prompt
9/ Download Google SDK for intensive development 
****Resources like BigTable, Cloud Spanner are pretty expensive****
so delete unused resources
gcloud aoth list
/1/---to show all bucket
$ gsutil 	ls					 

/2/--Create bucket
$ gsutil mb -c standard -l asia-east1 gs://trolls_bucket   

/3/ --copy from one bucket to other
$ gsutil cp -r -p gs://bond_bucket/* gs://trolls_bucket/gcl
					Source				Destination
	-r = recursively copy all files & directions
	-p = copy over permissions
	
/4/-- region list all the region gcp offers
$ gcloud compute regions list

/5/--*** Temporary storage like 1 week e.g. log files --
-- setting up life cycle management(LCM)--
		//--To Check LCM
		$ gsutil lifecycle get gs://rm_bucket

		//--create LCM in JSON
		$  nano my_rm_lifecycle.json

		******JSOn file****
		{
		"rule":[{
		"action":[{"type": "Delete"},
		"condition":{"age":7}
		}]
		}
		To save json file press shift & X

/6/ 
65 Loading data using command line
		$ bq help 
		$ bq help mk
		$ bq help show
		$ bq ls = list of datasets in projects
		$ bq shell = commamnd line in shell platform
	To create datasets
		> $ mk my_new datasets
		> show
		> show datasets
		> exit
		To enforce projectID to recognize current projectID
		$ cat ~/.queryrc 
		$ echo project_id = $devshell_projectid >> ~/.queryrc
			
/a/ Upload Data from storage into bigquery
	$ bq load --source-format =csv\
	> my_new_dataset.names-2017\					+++++ Dataset
	> gs://rm_bucket/yob2017.txt\					+++++ Bucketname
	> name:string,gender:string,count:integer		+++++ schema 

/b/ Uploading multiple files using redular expressions Data from storage into bigquery

/c/ run the query on command line
	Runnning Bigquery using commamnd line
		$ bq show  my-test-project-9801:bigman.covid
		$ bq head -n 10  my-test-project-9801:bigman.covid
		
/d/ Export data from big query using commamndline



/7/ BIG Query Function
		*** Extract(day from date) as day_of_month,
		*** Extract(week from date) as week_of_month,
		*** FORMAT_DATE("%Y-%m",date) as YYYYmm
		*** parse_date('%Y%m%d',date) as Date
		***CROSS JOIN UNNEST(HITS) for array record functionality

		!!** Sum(Views) OVER (PARTITION BY Date) as Total Views
		(
			Sum(Views) OVER w1 as Total Views
		)WINDOW W1 as (PARTITION BY Date)

	!!!*** Deduping query
		SELECT *
			FROM 
			  (    
			  SELECT 
			  Date, channelGrouping as channel,
			  visitStartTime, totals.hits,
		 First_value(visitStartTime) OVER (PARTITION BY channelgrouping ORDER BY  visitStartTime DESC) Iv
			FROM bigquery-public-data.google_analytics_sample.ga_sessions_20170801
			)
		WHERE visitStartTime = Iv
		ORDER BY channel ASC

bq rm -r babynames  ----to delete datasets


ARRAY_AGG 
ARRAY_LENGTH(ARRAY_AGG( ))  Count the no of rows 
ARRAY_AGG(Distinct()) 