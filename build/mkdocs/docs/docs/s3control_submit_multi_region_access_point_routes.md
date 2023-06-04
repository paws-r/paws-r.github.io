<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_submit_multi_region_access_point_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits an updated route configuration for a Multi-Region Access Point

### Description

Submits an updated route configuration for a Multi-Region Access Point.
This API operation updates the routing status for the specified Regions
from active to passive, or from passive to active. A value of `0`
indicates a passive status, which means that traffic won't be routed to
the specified Region. A value of `100` indicates an active status, which
means that traffic will be routed to the specified Region. At least one
Region must be active at all times.

When the routing configuration is changed, any in-progress operations
(uploads, copies, deletes, and so on) to formerly active Regions will
continue to run to their final completion state (success or failure).
The routing configurations of any Regions that aren’t specified remain
unchanged.

Updated routing configurations might not be immediately applied. It can
take up to 2 minutes for your changes to take effect.

To submit routing control changes and failover requests, use the Amazon
S3 failover control infrastructure endpoints in these five Amazon Web
Services Regions:

-   `us-east-1`

-   `us-west-2`

-   `ap-southeast-2`

-   `ap-northeast-1`

-   `eu-west-1`

Your Amazon S3 bucket does not need to be in these five Regions.

### Usage

    s3control_submit_multi_region_access_point_routes(AccountId, Mrap,
      RouteUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_submit_multi_region_access_point_routes_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_submit_multi_region_access_point_routes_:_Mrap">Mrap</code></td>
<td><p>[required] The Multi-Region Access Point ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_submit_multi_region_access_point_routes_:_RouteUpdates">RouteUpdates</code></td>
<td><p>[required] The different routes that make up the new route
configuration. Active routes return a value of <code>100</code>, and
passive routes return a value of <code>0</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$submit_multi_region_access_point_routes(
      AccountId = "string",
      Mrap = "string",
      RouteUpdates = list(
        list(
          Bucket = "string",
          Region = "string",
          TrafficDialPercentage = 123
        )
      )
    )
