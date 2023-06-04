<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_hub_contents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the contents of a hub

### Description

List the contents of a hub.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_list_hub_contents(HubName, HubContentType, NameContains,
      MaxSchemaVersion, CreationTimeBefore, CreationTimeAfter, SortBy,
      SortOrder, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_hub_contents_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to list the contents of.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_contents_:_HubContentType">HubContentType</code></td>
<td><p>[required] The type of hub content to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_contents_:_NameContains">NameContains</code></td>
<td><p>Only list hub content if the name contains the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_contents_:_MaxSchemaVersion">MaxSchemaVersion</code></td>
<td><p>The upper bound of the hub content schema verion.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_contents_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list hub content that was created before the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_contents_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list hub content that was created after the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_hub_contents_:_SortBy">SortBy</code></td>
<td><p>Sort hub content versions by either name or creation
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_contents_:_SortOrder">SortOrder</code></td>
<td><p>Sort hubs by ascending or descending order.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_contents_:_MaxResults">MaxResults</code></td>
<td><p>The maximum amount of hub content to list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_contents_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_hub_contents</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of hub content, use the token in the next
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubContentSummaries = list(
        list(
          HubContentName = "string",
          HubContentArn = "string",
          HubContentVersion = "string",
          HubContentType = "Model"|"Notebook",
          DocumentSchemaVersion = "string",
          HubContentDisplayName = "string",
          HubContentDescription = "string",
          HubContentSearchKeywords = list(
            "string"
          ),
          HubContentStatus = "Available"|"Importing"|"Deleting"|"ImportFailed"|"DeleteFailed",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_hub_contents(
      HubName = "string",
      HubContentType = "Model"|"Notebook",
      NameContains = "string",
      MaxSchemaVersion = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "HubContentName"|"CreationTime"|"HubContentStatus",
      SortOrder = "Ascending"|"Descending",
      MaxResults = 123,
      NextToken = "string"
    )
