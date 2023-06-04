<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_geofence_collections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists geofence collections in your Amazon Web Services account

### Description

Lists geofence collections in your Amazon Web Services account.

### Usage

    locationservice_list_geofence_collections(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_geofence_collections_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of resources returned in a
single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_geofence_collections_:_NextToken">NextToken</code></td>
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
          CollectionName = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
          PricingPlanDataSource = "string",
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_geofence_collections(
      MaxResults = 123,
      NextToken = "string"
    )
