<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_list_pool_origination_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all associated origination identities in your pool

### Description

Lists all associated origination identities in your pool.

If you specify filters, the output includes information for only those
origination identities that meet the filter criteria.

### Usage

    pinpointsmsvoicev2_list_pool_origination_identities(PoolId, Filters,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_list_pool_origination_identities_:_PoolId">PoolId</code></td>
<td><p>[required] The unique identifier for the pool. This value can be
either the PoolId or PoolArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_list_pool_origination_identities_:_Filters">Filters</code></td>
<td><p>An array of PoolOriginationIdentitiesFilter objects to filter the
results..</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_list_pool_origination_identities_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_list_pool_origination_identities_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolArn = "string",
      PoolId = "string",
      OriginationIdentities = list(
        list(
          OriginationIdentityArn = "string",
          OriginationIdentity = "string",
          IsoCountryCode = "string",
          NumberCapabilities = list(
            "SMS"|"VOICE"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pool_origination_identities(
      PoolId = "string",
      Filters = list(
        list(
          Name = "iso-country-code"|"number-capability",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
