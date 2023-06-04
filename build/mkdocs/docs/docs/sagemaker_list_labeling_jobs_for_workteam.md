<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_labeling_jobs_for_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of labeling jobs assigned to a specified work team

### Description

Gets a list of labeling jobs assigned to a specified work team.

### Usage

    sagemaker_list_labeling_jobs_for_workteam(WorkteamArn, MaxResults,
      NextToken, CreationTimeAfter, CreationTimeBefore,
      JobReferenceCodeContains, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_WorkteamArn">WorkteamArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the work team for
which you want to see labeling jobs for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of labeling jobs to return in each page of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_labeling_jobs_for_workteam</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
labeling jobs, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only labeling jobs created after the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only labeling jobs created before the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_JobReferenceCodeContains">JobReferenceCodeContains</code></td>
<td><p>A filter the limits jobs to only the ones whose job reference
code contains the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_labeling_jobs_for_workteam_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelingJobSummaryList = list(
        list(
          LabelingJobName = "string",
          JobReferenceCode = "string",
          WorkRequesterAccountId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LabelCounters = list(
            HumanLabeled = 123,
            PendingHuman = 123,
            Total = 123
          ),
          NumberOfHumanWorkersPerDataObject = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_labeling_jobs_for_workteam(
      WorkteamArn = "string",
      MaxResults = 123,
      NextToken = "string",
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      JobReferenceCodeContains = "string",
      SortBy = "CreationTime",
      SortOrder = "Ascending"|"Descending"
    )
