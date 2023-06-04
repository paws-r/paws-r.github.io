<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists endpoints

### Description

Lists endpoints.

### Usage

    sagemaker_list_endpoints(SortBy, SortOrder, NextToken, MaxResults,
      NameContains, CreationTimeBefore, CreationTimeAfter,
      LastModifiedTimeBefore, LastModifiedTimeAfter, StatusEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_endpoints_:_SortBy">SortBy</code></td>
<td><p>Sorts the list of results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoints_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoints_:_NextToken">NextToken</code></td>
<td><p>If the result of a <code>list_endpoints</code> request was
truncated, the response includes a <code>NextToken</code>. To retrieve
the next set of endpoints, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of endpoints to return in the response. This
value defaults to 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoints_:_NameContains">NameContains</code></td>
<td><p>A string in endpoint names. This filter returns only endpoints
whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoints_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only endpoints that were created before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoints_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only endpoints with a creation time greater
than or equal to the specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoints_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only endpoints that were modified before
the specified timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoints_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only endpoints that were modified after the
specified timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoints_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that returns only endpoints with the specified
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Endpoints = list(
        list(
          EndpointName = "string",
          EndpointArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          EndpointStatus = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoints(
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
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
      StatusEquals = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed"
    )
