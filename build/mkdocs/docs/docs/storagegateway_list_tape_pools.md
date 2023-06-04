<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_tape_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists custom tape pools

### Description

Lists custom tape pools. You specify custom tape pools to list by
specifying one or more custom tape pool Amazon Resource Names (ARNs). If
you don't specify a custom tape pool ARN, the operation lists all custom
tape pools.

This operation supports pagination. You can optionally specify the
`Limit` parameter in the body to limit the number of tape pools in the
response. If the number of tape pools returned in the response is
truncated, the response includes a `Marker` element that you can use in
your subsequent request to retrieve the next set of tape pools.

### Usage

    storagegateway_list_tape_pools(PoolARNs, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_tape_pools_:_PoolARNs">PoolARNs</code></td>
<td><p>The Amazon Resource Name (ARN) of each of the custom tape pools
you want to list. If you don't specify a custom tape pool ARN, the
response lists all custom tape pools.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_list_tape_pools_:_Marker">Marker</code></td>
<td><p>A string that indicates the position at which to begin the
returned list of tape pools.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_list_tape_pools_:_Limit">Limit</code></td>
<td><p>An optional number limit for the tape pools in the list returned
by this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolInfos = list(
        list(
          PoolARN = "string",
          PoolName = "string",
          StorageClass = "DEEP_ARCHIVE"|"GLACIER",
          RetentionLockType = "COMPLIANCE"|"GOVERNANCE"|"NONE",
          RetentionLockTimeInDays = 123,
          PoolStatus = "ACTIVE"|"DELETED"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_tape_pools(
      PoolARNs = list(
        "string"
      ),
      Marker = "string",
      Limit = 123
    )
