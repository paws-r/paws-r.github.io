<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_place_indexes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists place index resources in your Amazon Web Services account

### Description

Lists place index resources in your Amazon Web Services account.

### Usage

    locationservice_list_place_indexes(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_place_indexes_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the maximum number of results returned in a
single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_place_indexes_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          DataSource = "string",
          Description = "string",
          IndexName = "string",
          PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_place_indexes(
      MaxResults = 123,
      NextToken = "string"
    )
