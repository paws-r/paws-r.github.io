<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_route_calculators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists route calculator resources in your Amazon Web Services account

### Description

Lists route calculator resources in your Amazon Web Services account.

### Usage

    locationservice_list_route_calculators(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_route_calculators_:_MaxResults">MaxResults</code></td>
<td><p>An optional maximum number of results returned in a single
call.</p>
<p>Default Value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_route_calculators_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default Value: <code>null</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          CalculatorName = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          DataSource = "string",
          Description = "string",
          PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_route_calculators(
      MaxResults = 123,
      NextToken = "string"
    )
