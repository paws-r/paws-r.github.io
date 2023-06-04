<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of domains associated to a specified fleet

### Description

Retrieves a list of domains associated to a specified fleet.

### Usage

    worklink_list_domains(FleetArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_list_domains_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_list_domains_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code id="worklink_list_domains_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Domains = list(
        list(
          DomainName = "string",
          DisplayName = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          DomainStatus = "PENDING_VALIDATION"|"ASSOCIATING"|"ACTIVE"|"INACTIVE"|"DISASSOCIATING"|"DISASSOCIATED"|"FAILED_TO_ASSOCIATE"|"FAILED_TO_DISASSOCIATE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains(
      FleetArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
