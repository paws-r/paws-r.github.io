<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_multi_region_access_point_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the routing configuration for a Multi-Region Access Point, indicating which Regions are active or passive

### Description

Returns the routing configuration for a Multi-Region Access Point,
indicating which Regions are active or passive.

To obtain routing control changes and failover requests, use the Amazon
S3 failover control infrastructure endpoints in these five Amazon Web
Services Regions:

-   `us-east-1`

-   `us-west-2`

-   `ap-southeast-2`

-   `ap-northeast-1`

-   `eu-west-1`

Your Amazon S3 bucket does not need to be in these five Regions.

### Usage

    s3control_get_multi_region_access_point_routes(AccountId, Mrap)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_multi_region_access_point_routes_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_multi_region_access_point_routes_:_Mrap">Mrap</code></td>
<td><p>[required] The Multi-Region Access Point ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Mrap = "string",
      Routes = list(
        list(
          Bucket = "string",
          Region = "string",
          TrafficDialPercentage = 123
        )
      )
    )

### Request syntax

    svc$get_multi_region_access_point_routes(
      AccountId = "string",
      Mrap = "string"
    )
