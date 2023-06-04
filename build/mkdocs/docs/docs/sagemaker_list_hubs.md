<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_hubs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all existing hubs

### Description

List all existing hubs.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_list_hubs(NameContains, CreationTimeBefore, CreationTimeAfter,
      LastModifiedTimeBefore, LastModifiedTimeAfter, SortBy, SortOrder,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_hubs_:_NameContains">NameContains</code></td>
<td><p>Only list hubs with names that contain the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hubs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list hubs that were created before the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hubs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list hubs that were created after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hubs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Only list hubs that were last modified before the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hubs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Only list hubs that were last modified after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_hubs_:_SortBy">SortBy</code></td>
<td><p>Sort hubs by either name or creation time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_hubs_:_SortOrder">SortOrder</code></td>
<td><p>Sort hubs by ascending or descending order.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_hubs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of hubs to list.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_hubs_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_hubs</code> request was
truncated, the response includes a <code>NextToken</code>. To retrieve
the next set of hubs, use the token in the next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubSummaries = list(
        list(
          HubName = "string",
          HubArn = "string",
          HubDisplayName = "string",
          HubDescription = "string",
          HubSearchKeywords = list(
            "string"
          ),
          HubStatus = "InService"|"Creating"|"Updating"|"Deleting"|"CreateFailed"|"UpdateFailed"|"DeleteFailed",
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

    svc$list_hubs(
      NameContains = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "HubName"|"CreationTime"|"HubStatus"|"AccountIdOwner",
      SortOrder = "Ascending"|"Descending",
      MaxResults = 123,
      NextToken = "string"
    )
