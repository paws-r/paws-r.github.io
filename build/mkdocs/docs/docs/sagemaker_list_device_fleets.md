<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_device_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of devices in the fleet

### Description

Returns a list of devices in the fleet.

### Usage

    sagemaker_list_device_fleets(NextToken, MaxResults, CreationTimeAfter,
      CreationTimeBefore, LastModifiedTimeAfter, LastModifiedTimeBefore,
      NameContains, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_device_fleets_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to need tokening.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_device_fleets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to select.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_device_fleets_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Filter fleets where packaging job was created after specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_device_fleets_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Filter fleets where the edge packaging job was created before
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_device_fleets_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Select fleets where the job was updated after X</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_device_fleets_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Select fleets where the job was updated before X</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_device_fleets_:_NameContains">NameContains</code></td>
<td><p>Filter for fleets containing this name in their fleet device
name.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_device_fleets_:_SortBy">SortBy</code></td>
<td><p>The column to sort by.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_device_fleets_:_SortOrder">SortOrder</code></td>
<td><p>What direction to sort in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceFleetSummaries = list(
        list(
          DeviceFleetArn = "string",
          DeviceFleetName = "string",
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

    svc$list_device_fleets(
      NextToken = "string",
      MaxResults = 123,
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
      NameContains = "string",
      SortBy = "NAME"|"CREATION_TIME"|"LAST_MODIFIED_TIME",
      SortOrder = "Ascending"|"Descending"
    )
