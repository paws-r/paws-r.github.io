<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_trial_components</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the trial components in your account

### Description

Lists the trial components in your account. You can sort the list by
trial component name or creation time. You can filter the list to show
only components that were created in a specific time range. You can also
filter on one of the following:

-   `ExperimentName`

-   `SourceArn`

-   `TrialName`

### Usage

    sagemaker_list_trial_components(ExperimentName, TrialName, SourceArn,
      CreatedAfter, CreatedBefore, SortBy, SortOrder, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_trial_components_:_ExperimentName">ExperimentName</code></td>
<td><p>A filter that returns only components that are part of the
specified experiment. If you specify <code>ExperimentName</code>, you
can't filter by <code>SourceArn</code> or
<code>TrialName</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trial_components_:_TrialName">TrialName</code></td>
<td><p>A filter that returns only components that are part of the
specified trial. If you specify <code>TrialName</code>, you can't filter
by <code>ExperimentName</code> or <code>SourceArn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_trial_components_:_SourceArn">SourceArn</code></td>
<td><p>A filter that returns only components that have the specified
source Amazon Resource Name (ARN). If you specify
<code>SourceArn</code>, you can't filter by <code>ExperimentName</code>
or <code>TrialName</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trial_components_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only components created after the specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_trial_components_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only components created before the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trial_components_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_trial_components_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_trial_components_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of components to return in the response. The
default value is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_trial_components_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_trial_components</code> didn't
return the full set of components, the call returns a token for getting
the next set of components.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentSummaries = list(
        list(
          TrialComponentName = "string",
          TrialComponentArn = "string",
          DisplayName = "string",
          TrialComponentSource = list(
            SourceArn = "string",
            SourceType = "string"
          ),
          Status = list(
            PrimaryStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
            Message = "string"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = list(
            UserProfileArn = "string",
            UserProfileName = "string",
            DomainId = "string",
            IamIdentity = list(
              Arn = "string",
              PrincipalId = "string",
              SourceIdentity = "string"
            )
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = list(
            UserProfileArn = "string",
            UserProfileName = "string",
            DomainId = "string",
            IamIdentity = list(
              Arn = "string",
              PrincipalId = "string",
              SourceIdentity = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_trial_components(
      ExperimentName = "string",
      TrialName = "string",
      SourceArn = "string",
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
