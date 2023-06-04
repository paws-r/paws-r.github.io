<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_batch_segment_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the batch segment jobs that have been performed off of a solution version that you specify

### Description

Gets a list of the batch segment jobs that have been performed off of a
solution version that you specify.

### Usage

    personalize_list_batch_segment_jobs(solutionVersionArn, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_batch_segment_jobs_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the solution version that the
batch segment jobs used to generate batch segments.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_batch_segment_jobs_:_nextToken">nextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_batch_segment_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of batch segment job results to return in each
page. The default value is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      batchSegmentJobs = list(
        list(
          batchSegmentJobArn = "string",
          jobName = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string",
          solutionVersionArn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_batch_segment_jobs(
      solutionVersionArn = "string",
      nextToken = "string",
      maxResults = 123
    )
