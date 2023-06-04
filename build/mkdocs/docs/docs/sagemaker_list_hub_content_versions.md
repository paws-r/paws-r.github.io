<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_hub_content_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List hub content versions

### Description

List hub content versions.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_list_hub_content_versions(HubName, HubContentType,
      HubContentName, MinVersion, MaxSchemaVersion, CreationTimeBefore,
      CreationTimeAfter, SortBy, SortOrder, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to list the content versions
of.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_content_versions_:_HubContentType">HubContentType</code></td>
<td><p>[required] The type of hub content to list versions of.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_HubContentName">HubContentName</code></td>
<td><p>[required] The name of the hub content.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_content_versions_:_MinVersion">MinVersion</code></td>
<td><p>The lower bound of the hub content versions to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_MaxSchemaVersion">MaxSchemaVersion</code></td>
<td><p>The upper bound of the hub content schema version.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_content_versions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list hub content versions that were created before the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list hub content versions that were created after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_content_versions_:_SortBy">SortBy</code></td>
<td><p>Sort hub content versions by either name or creation
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_SortOrder">SortOrder</code></td>
<td><p>Sort hub content versions by ascending or descending
order.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_hub_content_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of hub content versions to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_hub_content_versions_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous
<code>list_hub_content_versions</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
hub content versions, use the token in the next request.</p></td>
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

    svc$list_hub_content_versions(
      HubName = "string",
      HubContentType = "Model"|"Notebook",
      HubContentName = "string",
      MinVersion = "string",
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
