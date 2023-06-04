<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified pools or all pools associated with your Amazon Web Services account

### Description

Retrieves the specified pools or all pools associated with your Amazon
Web Services account.

If you specify pool IDs, the output includes information for only the
specified pools. If you specify filters, the output includes information
for only those pools that meet the filter criteria. If you don't specify
pool IDs or filters, the output includes information for all pools.

If you specify a pool ID that isn't valid, an Error is returned.

A pool is a collection of phone numbers and SenderIds. A pool can
include one or more phone numbers and SenderIds that are associated with
your Amazon Web Services account.

### Usage

    pinpointsmsvoicev2_describe_pools(PoolIds, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_pools_:_PoolIds">PoolIds</code></td>
<td><p>The unique identifier of pools to find. This is an array of
strings that can be either the PoolId or PoolArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_pools_:_Filters">Filters</code></td>
<td><p>An array of PoolFilter objects to filter the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_pools_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_pools_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Pools = list(
        list(
          PoolArn = "string",
          PoolId = "string",
          Status = "CREATING"|"ACTIVE"|"DELETING",
          MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
          TwoWayEnabled = TRUE|FALSE,
          TwoWayChannelArn = "string",
          SelfManagedOptOutsEnabled = TRUE|FALSE,
          OptOutListName = "string",
          SharedRoutesEnabled = TRUE|FALSE,
          DeletionProtectionEnabled = TRUE|FALSE,
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_pools(
      PoolIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "status"|"message-type"|"two-way-enabled"|"self-managed-opt-outs-enabled"|"opt-out-list-name"|"shared-routes-enabled"|"deletion-protection-enabled",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
