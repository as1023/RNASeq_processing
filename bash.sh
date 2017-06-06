##submit job 
msub test.sh

cancell all job 
mjobctl -c -w user=hd_lo149 -w acct=acct1
showq
checkjob <jobid>
showq -r (check for active job)
showq -c (check for completed job)
canceljob <with job id >
checkjob <job_ID> get informa on of your job
checkjob -v -v -v <job_ID> All detailed informa on



mjobctl -c <job_ID>
mjobctl -c -w state=Idle mjobctl -c -w state=Running mjobctl -c -w state=BatchHold mjobctl -c -w user=$USER
cancel the job (new command) cancel ALL idle jobs
cancel ALL running jobs
cancel ALL hold jobs
cancel ALL your jobs!
####github tutorial 

git pull origin 

git add .
git commit -m "creat"
git push origin master

