<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_frameworks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region

### Description

Returns a list of all frameworks for an Amazon Web Services account and
Amazon Web Services Region.

### Usage

    backup_list_frameworks(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_frameworks_:_MaxResults">MaxResults</code></td>
<td><p>The number of desired results from 1 to 1000. Optional. If
unspecified, the query will return 1 MB of data.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_frameworks_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Frameworks = list(
        list(
          FrameworkName = "string",
          FrameworkArn = "string",
          FrameworkDescription = "string",
          NumberOfControls = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          DeploymentStatus = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_frameworks(
      MaxResults = 123,
      NextToken = "string"
    )
