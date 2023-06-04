<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_list_app_monitors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the Amazon CloudWatch RUM app monitors in the account

### Description

Returns a list of the Amazon CloudWatch RUM app monitors in the account.

### Usage

    cloudwatchrum_list_app_monitors(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_list_app_monitors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one operation. The
default is 50. The maximum that you can specify is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_list_app_monitors_:_NextToken">NextToken</code></td>
<td><p>Use the token returned by the previous operation to request the
next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppMonitorSummaries = list(
        list(
          Created = "string",
          Id = "string",
          LastModified = "string",
          Name = "string",
          State = "CREATED"|"DELETING"|"ACTIVE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_app_monitors(
      MaxResults = 123,
      NextToken = "string"
    )
