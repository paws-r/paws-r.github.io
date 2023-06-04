<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_image_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the versions of a specified image and their properties

### Description

Lists the versions of a specified image and their properties. The list
can be filtered by creation time or modified time.

### Usage

    sagemaker_list_image_versions(CreationTimeAfter, CreationTimeBefore,
      ImageName, LastModifiedTimeAfter, LastModifiedTimeBefore, MaxResults,
      NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_image_versions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only versions created on or after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_image_versions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only versions created on or before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_image_versions_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image to list the versions
of.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_image_versions_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only versions modified on or after the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_image_versions_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only versions modified on or before the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_image_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of versions to return in the response. The
default value is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_image_versions_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_image_versions</code> didn't
return the full set of versions, the call returns a token for getting
the next set of versions.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_image_versions_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CREATION_TIME</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_image_versions_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>DESCENDING</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageVersions = list(
        list(
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string",
          ImageArn = "string",
          ImageVersionArn = "string",
          ImageVersionStatus = "CREATING"|"CREATED"|"CREATE_FAILED"|"DELETING"|"DELETE_FAILED",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          Version = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_image_versions(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      ImageName = "string",
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string",
      SortBy = "CREATION_TIME"|"LAST_MODIFIED_TIME"|"VERSION",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
