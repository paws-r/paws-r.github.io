<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_purchase_reserved_cache_nodes_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to purchase a reserved cache node offering

### Description

Allows you to purchase a reserved cache node offering. Reserved nodes
are not eligible for cancellation and are non-refundable. For more
information, see [Managing Costs with Reserved
Nodes](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/) for
Redis or [Managing Costs with Reserved
Nodes](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/) for
Memcached.

### Usage

    elasticache_purchase_reserved_cache_nodes_offering(
      ReservedCacheNodesOfferingId, ReservedCacheNodeId, CacheNodeCount, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_purchase_reserved_cache_nodes_offering_:_ReservedCacheNodesOfferingId">ReservedCacheNodesOfferingId</code></td>
<td><p>[required] The ID of the reserved cache node offering to
purchase.</p>
<p>Example: <code
style="white-space: pre;">⁠438012d3-4052-4cc7-b2e3-8d3372e0e706⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_purchase_reserved_cache_nodes_offering_:_ReservedCacheNodeId">ReservedCacheNodeId</code></td>
<td><p>A customer-specified identifier to track this reservation.</p>
<p>The Reserved Cache Node ID is an unique customer-specified identifier
to track this reservation. If this parameter is not specified,
ElastiCache automatically generates an identifier for the
reservation.</p>
<p>Example: myreservationID</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_purchase_reserved_cache_nodes_offering_:_CacheNodeCount">CacheNodeCount</code></td>
<td><p>The number of cache node instances to reserve.</p>
<p>Default: <code>1</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_purchase_reserved_cache_nodes_offering_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedCacheNode = list(
        ReservedCacheNodeId = "string",
        ReservedCacheNodesOfferingId = "string",
        CacheNodeType = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        Duration = 123,
        FixedPrice = 123.0,
        UsagePrice = 123.0,
        CacheNodeCount = 123,
        ProductDescription = "string",
        OfferingType = "string",
        State = "string",
        RecurringCharges = list(
          list(
            RecurringChargeAmount = 123.0,
            RecurringChargeFrequency = "string"
          )
        ),
        ReservationARN = "string"
      )
    )

### Request syntax

    svc$purchase_reserved_cache_nodes_offering(
      ReservedCacheNodesOfferingId = "string",
      ReservedCacheNodeId = "string",
      CacheNodeCount = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
