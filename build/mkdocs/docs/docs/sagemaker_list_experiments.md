<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_experiments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the experiments in your account

### Description

Lists all the experiments in your account. The list can be filtered to
show only experiments that were created in a specific time range. The
list can be sorted by experiment name or creation time.

### Usage

    sagemaker_list_experiments(CreatedAfter, CreatedBefore, SortBy,
      SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_experiments_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only experiments created after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_experiments_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only experiments created before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_experiments_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_experiments_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_experiments_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_experiments</code> didn't
return the full set of experiments, the call returns a token for getting
the next set of experiments.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_experiments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of experiments to return in the response. The
default value is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExperimentSummaries = list(
        list(
          ExperimentArn = "string",
          ExperimentName = "string",
          DisplayName = "string",
          ExperimentSource = list(
            SourceArn = "string",
            SourceType = "string"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_experiments(
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
