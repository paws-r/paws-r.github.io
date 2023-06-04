<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_update_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the updates of a directory for a particular update type

### Description

Describes the updates of a directory for a particular update type.

### Usage

    directoryservice_describe_update_directory(DirectoryId, UpdateType,
      RegionName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_update_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The unique identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_update_directory_:_UpdateType">UpdateType</code></td>
<td><p>[required] The type of updates you want to describe for the
directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_update_directory_:_RegionName">RegionName</code></td>
<td><p>The name of the Region.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_update_directory_:_NextToken">NextToken</code></td>
<td><p>The <code>DescribeUpdateDirectoryResult</code>. NextToken value
from a previous call to <code>describe_update_directory</code>. Pass
null if this is the first call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateActivities = list(
        list(
          Region = "string",
          Status = "Updated"|"Updating"|"UpdateFailed",
          StatusReason = "string",
          InitiatedBy = "string",
          NewValue = list(
            OSUpdateSettings = list(
              OSVersion = "SERVER_2012"|"SERVER_2019"
            )
          ),
          PreviousValue = list(
            OSUpdateSettings = list(
              OSVersion = "SERVER_2012"|"SERVER_2019"
            )
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_update_directory(
      DirectoryId = "string",
      UpdateType = "OS",
      RegionName = "string",
      NextToken = "string"
    )
