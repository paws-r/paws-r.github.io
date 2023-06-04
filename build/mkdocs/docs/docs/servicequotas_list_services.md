<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_list_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the names and codes for the services integrated with Service Quotas

### Description

Lists the names and codes for the services integrated with Service
Quotas.

### Usage

    servicequotas_list_services(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_list_services_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_list_services_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, if any, make another call with the token
returned from this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Services = list(
        list(
          ServiceCode = "string",
          ServiceName = "string"
        )
      )
    )

### Request syntax

    svc$list_services(
      NextToken = "string",
      MaxResults = 123
    )
