<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_pending_aggregation_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes pending authorization requests for a specified aggregator account in a specified region

### Description

Deletes pending authorization requests for a specified aggregator
account in a specified region.

### Usage

    configservice_delete_pending_aggregation_request(RequesterAccountId,
      RequesterAwsRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_pending_aggregation_request_:_RequesterAccountId">RequesterAccountId</code></td>
<td><p>[required] The 12-digit account ID of the account requesting to
aggregate data.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_delete_pending_aggregation_request_:_RequesterAwsRegion">RequesterAwsRegion</code></td>
<td><p>[required] The region requesting to aggregate data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_pending_aggregation_request(
      RequesterAccountId = "string",
      RequesterAwsRegion = "string"
    )
