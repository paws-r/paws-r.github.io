<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_describe_recommendation_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes recommendation export jobs created in the last seven days

### Description

Describes recommendation export jobs created in the last seven days.

Use the `export_auto_scaling_group_recommendations` or
`export_ec2_instance_recommendations` actions to request an export of
your recommendations. Then use the `describe_recommendation_export_jobs`
action to view your export jobs.

### Usage

    computeoptimizer_describe_recommendation_export_jobs(jobIds, filters,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_describe_recommendation_export_jobs_:_jobIds">jobIds</code></td>
<td><p>The identification numbers of the export jobs to return.</p>
<p>An export job ID is returned when you create an export using the
<code>export_auto_scaling_group_recommendations</code> or
<code>export_ec2_instance_recommendations</code> actions.</p>
<p>All export jobs created in the last seven days are returned if this
parameter is omitted.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_describe_recommendation_export_jobs_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of export jobs.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_describe_recommendation_export_jobs_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of export jobs.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_describe_recommendation_export_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of export jobs to return with a single
request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendationExportJobs = list(
        list(
          jobId = "string",
          destination = list(
            s3 = list(
              bucket = "string",
              key = "string",
              metadataKey = "string"
            )
          ),
          resourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"NotApplicable"|"EcsService",
          status = "Queued"|"InProgress"|"Complete"|"Failed",
          creationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_recommendation_export_jobs(
      jobIds = list(
        "string"
      ),
      filters = list(
        list(
          name = "ResourceType"|"JobStatus",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
