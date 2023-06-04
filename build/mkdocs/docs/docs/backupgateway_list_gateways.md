<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_list_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region

### Description

Lists backup gateways owned by an Amazon Web Services account in an
Amazon Web Services Region. The returned list is ordered by gateway
Amazon Resource Name (ARN).

### Usage

    backupgateway_list_gateways(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_list_gateways_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of gateways to list.</p></td>
</tr>
<tr class="even">
<td><code
id="backupgateway_list_gateways_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned resources. For
example, if a request is made to return <code>MaxResults</code> number
of resources, <code>NextToken</code> allows you to return more items in
your list starting at the location pointed to by the next
token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Gateways = list(
        list(
          GatewayArn = "string",
          GatewayDisplayName = "string",
          GatewayType = "BACKUP_VM",
          HypervisorId = "string",
          LastSeenTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_gateways(
      MaxResults = 123,
      NextToken = "string"
    )
