<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_artifacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the artifacts in your account and their properties

### Description

Lists the artifacts in your account and their properties.

### Usage

    sagemaker_list_artifacts(SourceUri, ArtifactType, CreatedAfter,
      CreatedBefore, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_artifacts_:_SourceUri">SourceUri</code></td>
<td><p>A filter that returns only artifacts with the specified source
URI.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_artifacts_:_ArtifactType">ArtifactType</code></td>
<td><p>A filter that returns only artifacts of the specified
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_artifacts_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only artifacts created on or after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_artifacts_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only artifacts created on or before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_artifacts_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_artifacts_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_artifacts_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_artifacts</code> didn't return
the full set of artifacts, the call returns a token for getting the next
set of artifacts.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_artifacts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of artifacts to return in the response. The
default value is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArtifactSummaries = list(
        list(
          ArtifactArn = "string",
          ArtifactName = "string",
          Source = list(
            SourceUri = "string",
            SourceTypes = list(
              list(
                SourceIdType = "MD5Hash"|"S3ETag"|"S3Version"|"Custom",
                Value = "string"
              )
            )
          ),
          ArtifactType = "string",
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

    svc$list_artifacts(
      SourceUri = "string",
      ArtifactType = "string",
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
