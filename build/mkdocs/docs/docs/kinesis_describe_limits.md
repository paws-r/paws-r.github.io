<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_describe_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the shard limits and usage for the account

### Description

Describes the shard limits and usage for the account.

If you update your account limits, the old limits might be returned for
a few minutes.

This operation has a limit of one transaction per second per account.

### Usage

    kinesis_describe_limits()

### Value

A list with the following syntax:

    list(
      ShardLimit = 123,
      OpenShardCount = 123,
      OnDemandStreamCount = 123,
      OnDemandStreamCountLimit = 123
    )

### Request syntax

    svc$describe_limits()
