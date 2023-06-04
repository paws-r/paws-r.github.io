<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_list_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Batch jobs

### Description

Returns a list of Batch jobs.

You must specify only one of the following items:

-   A job queue ID to return a list of jobs in that job queue

-   A multi-node parallel job ID to return a list of nodes for that job

-   An array job ID to return a list of the children for that job

You can filter the results by job status with the `jobStatus` parameter.
If you don't specify a status, only `RUNNING` jobs are returned.

### Usage

    batch_list_jobs(jobQueue, arrayJobId, multiNodeJobId, jobStatus,
      maxResults, nextToken, filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_list_jobs_:_jobQueue">jobQueue</code></td>
<td><p>The name or full Amazon Resource Name (ARN) of the job queue used
to list jobs.</p></td>
</tr>
<tr class="even">
<td><code id="batch_list_jobs_:_arrayJobId">arrayJobId</code></td>
<td><p>The job ID for an array job. Specifying an array job ID with this
parameter lists all child jobs from within the specified array.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_list_jobs_:_multiNodeJobId">multiNodeJobId</code></td>
<td><p>The job ID for a multi-node parallel job. Specifying a multi-node
parallel job ID with this parameter lists all nodes that are associated
with the specified job.</p></td>
</tr>
<tr class="even">
<td><code id="batch_list_jobs_:_jobStatus">jobStatus</code></td>
<td><p>The job status used to filter jobs in the specified queue. If the
<code>filters</code> parameter is specified, the <code>jobStatus</code>
parameter is ignored and jobs with any status are returned. If you don't
specify a status, only <code>RUNNING</code> jobs are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="batch_list_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results returned by <code>list_jobs</code>
in paginated output. When this parameter is used, <code>list_jobs</code>
only returns <code>maxResults</code> results in a single page and a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another <code>list_jobs</code>
request with the returned <code>nextToken</code> value. This value can
be between 1 and 100. If this parameter isn't used, then
<code>list_jobs</code> returns up to 100 results and a
<code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code id="batch_list_jobs_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_jobs</code> request where <code>maxResults</code>
was used and the results exceeded the value of that parameter.
Pagination continues from the end of the previous results that returned
the <code>nextToken</code> value. This value is <code>null</code> when
there are no more results to return.</p>
<p>Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code id="batch_list_jobs_:_filters">filters</code></td>
<td><p>The filter to apply to the query. Only one filter can be used at
a time. When the filter is used, <code>jobStatus</code> is ignored. The
filter doesn't apply to child jobs in an array or multi-node parallel
(MNP) jobs. The results are sorted by the <code>createdAt</code> field,
with the most recent jobs being first.</p>
<p><strong>JOB_NAME</strong></p>
<p>The value of the filter is a case-insensitive match for the job name.
If the value ends with an asterisk (<em>), the filter matches any job
name that begins with the string before the '</em>'. This corresponds to
the <code>jobName</code> value. For example, <code>test1</code> matches
both <code>Test1</code> and <code>test1</code>, and <code
style="white-space: pre;">⁠test1*⁠</code> matches both <code>test1</code>
and <code>Test10</code>. When the <code>JOB_NAME</code> filter is used,
the results are grouped by the job name and version.</p>
<p><strong>JOB_DEFINITION</strong></p>
<p>The value for the filter is the name or Amazon Resource Name (ARN) of
the job definition. This corresponds to the <code>jobDefinition</code>
value. The value is case sensitive. When the value for the filter is the
job definition name, the results include all the jobs that used any
revision of that job definition name. If the value ends with an asterisk
(<em>), the filter matches any job definition name that begins with the
string before the '</em>'. For example, <code>jd1</code> matches only
<code>jd1</code>, and <code style="white-space: pre;">⁠jd1*⁠</code>
matches both <code>jd1</code> and <code>jd1A</code>. The version of the
job definition that's used doesn't affect the sort order. When the
<code>JOB_DEFINITION</code> filter is used and the ARN is used (which is
in the form <code
style="white-space: pre;">⁠arn:${Partition}:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}⁠</code>),
the results include jobs that used the specified revision of the job
definition. Asterisk (*) isn't supported when the ARN is used.</p>
<p><strong>BEFORE_CREATED_AT</strong></p>
<p>The value for the filter is the time that's before the job was
created. This corresponds to the <code>createdAt</code> value. The value
is a string representation of the number of milliseconds since 00:00:00
UTC (midnight) on January 1, 1970.</p>
<p><strong>AFTER_CREATED_AT</strong></p>
<p>The value for the filter is the time that's after the job was
created. This corresponds to the <code>createdAt</code> value. The value
is a string representation of the number of milliseconds since 00:00:00
UTC (midnight) on January 1, 1970.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobSummaryList = list(
        list(
          jobArn = "string",
          jobId = "string",
          jobName = "string",
          createdAt = 123,
          status = "SUBMITTED"|"PENDING"|"RUNNABLE"|"STARTING"|"RUNNING"|"SUCCEEDED"|"FAILED",
          statusReason = "string",
          startedAt = 123,
          stoppedAt = 123,
          container = list(
            exitCode = 123,
            reason = "string"
          ),
          arrayProperties = list(
            size = 123,
            index = 123
          ),
          nodeProperties = list(
            isMainNode = TRUE|FALSE,
            numNodes = 123,
            nodeIndex = 123
          ),
          jobDefinition = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_jobs(
      jobQueue = "string",
      arrayJobId = "string",
      multiNodeJobId = "string",
      jobStatus = "SUBMITTED"|"PENDING"|"RUNNABLE"|"STARTING"|"RUNNING"|"SUCCEEDED"|"FAILED",
      maxResults = 123,
      nextToken = "string",
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # This example lists the running jobs in the HighPriority job queue.
    svc$list_jobs(
      jobQueue = "HighPriority"
    )

    # This example lists jobs in the HighPriority job queue that are in the
    # SUBMITTED job status.
    svc$list_jobs(
      jobQueue = "HighPriority",
      jobStatus = "SUBMITTED"
    )

    ## End(Not run)
