<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the images in your account and their properties

### Description

Lists the images in your account and their properties. The list can be
filtered by creation time or modified time, and whether the image name
contains a specified string.

### Usage

    sagemaker_list_images(CreationTimeAfter, CreationTimeBefore,
      LastModifiedTimeAfter, LastModifiedTimeBefore, MaxResults, NameContains,
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
id="sagemaker_list_images_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only images created on or after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_images_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only images created on or before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_images_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only images modified on or after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_images_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only images modified on or before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_images_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of images to return in the response. The
default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_images_:_NameContains">NameContains</code></td>
<td><p>A filter that returns only images whose name contains the
specified string.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_images_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_images</code> didn't return
the full set of images, the call returns a token for getting the next
set of images.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_images_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CREATION_TIME</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_images_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>DESCENDING</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Images = list(
        list(
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          DisplayName = "string",
          FailureReason = "string",
          ImageArn = "string",
          ImageName = "string",
          ImageStatus = "CREATING"|"CREATED"|"CREATE_FAILED"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETE_FAILED",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_images(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      NextToken = "string",
      SortBy = "CREATION_TIME"|"LAST_MODIFIED_TIME"|"IMAGE_NAME",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
