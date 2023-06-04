<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_recovery_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of recovery points

### Description

Returns an array of recovery points.

### Usage

    redshiftserverless_list_recovery_points(endTime, maxResults,
      namespaceArn, namespaceName, nextToken, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_recovery_points_:_endTime">endTime</code></td>
<td><p>The time when creation of the recovery point finished.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_recovery_points_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to display the
next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_recovery_points_:_namespaceArn">namespaceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the namespace from which to
list recovery points.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_recovery_points_:_namespaceName">namespaceName</code></td>
<td><p>The name of the namespace to list recovery points for.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_recovery_points_:_nextToken">nextToken</code></td>
<td><p>If your initial <code>list_recovery_points</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in following <code>list_recovery_points</code>
operations, which returns results in the next page.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_recovery_points_:_startTime">startTime</code></td>
<td><p>The time when the recovery point's creation was
initiated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      recoveryPoints = list(
        list(
          namespaceArn = "string",
          namespaceName = "string",
          recoveryPointCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          recoveryPointId = "string",
          totalSizeInMegaBytes = 123.0,
          workgroupName = "string"
        )
      )
    )

### Request syntax

    svc$list_recovery_points(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      maxResults = 123,
      namespaceArn = "string",
      namespaceName = "string",
      nextToken = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
