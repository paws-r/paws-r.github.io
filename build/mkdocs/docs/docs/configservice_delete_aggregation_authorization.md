<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_aggregation_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the authorization granted to the specified configuration aggregator account in a specified region

### Description

Deletes the authorization granted to the specified configuration
aggregator account in a specified region.

### Usage

    configservice_delete_aggregation_authorization(AuthorizedAccountId,
      AuthorizedAwsRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_aggregation_authorization_:_AuthorizedAccountId">AuthorizedAccountId</code></td>
<td><p>[required] The 12-digit account ID of the account authorized to
aggregate data.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_delete_aggregation_authorization_:_AuthorizedAwsRegion">AuthorizedAwsRegion</code></td>
<td><p>[required] The region authorized to collect aggregated
data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_aggregation_authorization(
      AuthorizedAccountId = "string",
      AuthorizedAwsRegion = "string"
    )
