<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_trials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the trials in your account

### Description

Lists the trials in your account. Specify an experiment name to limit
the list to the trials that are part of that experiment. Specify a trial
component name to limit the list to the trials that associated with that
trial component. The list can be filtered to show only trials that were
created in a specific time range. The list can be sorted by trial name
or creation time.

### Usage

    sagemaker_list_trials(ExperimentName, TrialComponentName, CreatedAfter,
      CreatedBefore, SortBy, SortOrder, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_trials_:_ExperimentName">ExperimentName</code></td>
<td><p>A filter that returns only trials that are part of the specified
experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trials_:_TrialComponentName">TrialComponentName</code></td>
<td><p>A filter that returns only trials that are associated with the
specified trial component.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_trials_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only trials created after the specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trials_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only trials created before the specified
time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_trials_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_trials_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_trials_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of trials to return in the response. The
default value is 10.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_trials_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_trials</code> didn't return
the full set of trials, the call returns a token for getting the next
set of trials.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialSummaries = list(
        list(
          TrialArn = "string",
          TrialName = "string",
          DisplayName = "string",
          TrialSource = list(
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

    svc$list_trials(
      ExperimentName = "string",
      TrialComponentName = "string",
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      MaxResults = 123,
      NextToken = "string"
    )
