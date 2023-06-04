<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_list_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of fleets for the current account and Region

### Description

Retrieves a list of fleets for the current account and Region.

### Usage

    worklink_list_fleets(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_list_fleets_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_list_fleets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FleetSummaryList = list(
        list(
          FleetArn = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          FleetName = "string",
          DisplayName = "string",
          CompanyCode = "string",
          FleetStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED"|"FAILED_TO_CREATE"|"FAILED_TO_DELETE",
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_fleets(
      NextToken = "string",
      MaxResults = 123
    )
