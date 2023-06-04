<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_list_dashboards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the dashboards for your account

### Description

Returns a list of the dashboards for your account. If you include
`DashboardNamePrefix`, only those dashboards with names starting with
the prefix are listed. Otherwise, all dashboards in your account are
listed.

`list_dashboards` returns up to 1000 results on one page. If there are
more than 1000 dashboards, you can call `list_dashboards` again and
include the value you received for `NextToken` in the first call, to
receive the next 1000 results.

### Usage

    cloudwatch_list_dashboards(DashboardNamePrefix, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_list_dashboards_:_DashboardNamePrefix">DashboardNamePrefix</code></td>
<td><p>If you specify this parameter, only the dashboards with names
starting with the specified string are listed. The maximum length is
255, and valid characters are A-Z, a-z, 0-9, ".", "-", and "_".</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_list_dashboards_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to indicate that there is
more data available.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardEntries = list(
        list(
          DashboardName = "string",
          DashboardArn = "string",
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          Size = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dashboards(
      DashboardNamePrefix = "string",
      NextToken = "string"
    )
