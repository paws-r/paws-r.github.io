<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_describe_job_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your job queues

### Description

Describes one or more of your job queues.

### Usage

    batch_describe_job_queues(jobQueues, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_describe_job_queues_:_jobQueues">jobQueues</code></td>
<td><p>A list of up to 100 queue names or full queue Amazon Resource
Name (ARN) entries.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_describe_job_queues_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results returned by
<code>describe_job_queues</code> in paginated output. When this
parameter is used, <code>describe_job_queues</code> only returns
<code>maxResults</code> results in a single page and a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_job_queues</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>describe_job_queues</code> returns
up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_describe_job_queues_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_job_queues</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return.</p>
<p>Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobQueues = list(
        list(
          jobQueueName = "string",
          jobQueueArn = "string",
          state = "ENABLED"|"DISABLED",
          schedulingPolicyArn = "string",
          status = "CREATING"|"UPDATING"|"DELETING"|"DELETED"|"VALID"|"INVALID",
          statusReason = "string",
          priority = 123,
          computeEnvironmentOrder = list(
            list(
              order = 123,
              computeEnvironment = "string"
            )
          ),
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_job_queues(
      jobQueues = list(
        "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the HighPriority job queue.
    svc$describe_job_queues(
      jobQueues = list(
        "HighPriority"
      )
    )

    ## End(Not run)
