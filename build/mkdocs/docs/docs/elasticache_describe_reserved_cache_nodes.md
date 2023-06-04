<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_reserved_cache_nodes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about reserved cache nodes for this account, or about a specified reserved cache node

### Description

Returns information about reserved cache nodes for this account, or
about a specified reserved cache node.

### Usage

    elasticache_describe_reserved_cache_nodes(ReservedCacheNodeId,
      ReservedCacheNodesOfferingId, CacheNodeType, Duration,
      ProductDescription, OfferingType, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_ReservedCacheNodeId">ReservedCacheNodeId</code></td>
<td><p>The reserved cache node identifier filter value. Use this
parameter to show only the reservation that matches the specified
reservation ID.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_ReservedCacheNodesOfferingId">ReservedCacheNodesOfferingId</code></td>
<td><p>The offering identifier filter value. Use this parameter to show
only purchased reservations matching the specified offering
identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_CacheNodeType">CacheNodeType</code></td>
<td><p>The cache node type filter value. Use this parameter to show only
those reservations matching the specified cache node type.</p>
<p>The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.</p>
<ul>
<li><p>General purpose:</p>
<ul>
<li><p>Current generation:</p>
<p><strong>M6g node types</strong> (available only for Redis engine
version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
<code>cache.m6g.large</code>, <code>cache.m6g.xlarge</code>,
<code>cache.m6g.2xlarge</code>, <code>cache.m6g.4xlarge</code>,
<code>cache.m6g.8xlarge</code>, <code>cache.m6g.12xlarge</code>,
<code>cache.m6g.16xlarge</code></p>
<p>For region availability, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported
Node Types</a></p>
<p><strong>M5 node types:</strong> <code>cache.m5.large</code>,
<code>cache.m5.xlarge</code>, <code>cache.m5.2xlarge</code>,
<code>cache.m5.4xlarge</code>, <code>cache.m5.12xlarge</code>,
<code>cache.m5.24xlarge</code></p>
<p><strong>M4 node types:</strong> <code>cache.m4.large</code>,
<code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>,
<code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code></p>
<p><strong>T4g node types</strong> (available only for Redis engine
version 5.0.6 onward and Memcached engine version 1.5.16 onward):
<code>cache.t4g.micro</code>, <code>cache.t4g.small</code>,
<code>cache.t4g.medium</code></p>
<p><strong>T3 node types:</strong> <code>cache.t3.micro</code>,
<code>cache.t3.small</code>, <code>cache.t3.medium</code></p>
<p><strong>T2 node types:</strong> <code>cache.t2.micro</code>,
<code>cache.t2.small</code>, <code>cache.t2.medium</code></p></li>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>T1 node types:</strong> <code>cache.t1.micro</code></p>
<p><strong>M1 node types:</strong> <code>cache.m1.small</code>,
<code>cache.m1.medium</code>, <code>cache.m1.large</code>,
<code>cache.m1.xlarge</code></p>
<p><strong>M3 node types:</strong> <code>cache.m3.medium</code>,
<code>cache.m3.large</code>, <code>cache.m3.xlarge</code>,
<code>cache.m3.2xlarge</code></p></li>
</ul></li>
<li><p>Compute optimized:</p>
<ul>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>C1 node types:</strong> <code>cache.c1.xlarge</code></p></li>
</ul></li>
<li><p>Memory optimized:</p>
<ul>
<li><p>Current generation:</p>
<p><strong>R6g node types</strong> (available only for Redis engine
version 5.0.6 onward and for Memcached engine version 1.5.16
onward).</p>
<p><code>cache.r6g.large</code>, <code>cache.r6g.xlarge</code>,
<code>cache.r6g.2xlarge</code>, <code>cache.r6g.4xlarge</code>,
<code>cache.r6g.8xlarge</code>, <code>cache.r6g.12xlarge</code>,
<code>cache.r6g.16xlarge</code></p>
<p>For region availability, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported
Node Types</a></p>
<p><strong>R5 node types:</strong> <code>cache.r5.large</code>,
<code>cache.r5.xlarge</code>, <code>cache.r5.2xlarge</code>,
<code>cache.r5.4xlarge</code>, <code>cache.r5.12xlarge</code>,
<code>cache.r5.24xlarge</code></p>
<p><strong>R4 node types:</strong> <code>cache.r4.large</code>,
<code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>,
<code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>,
<code>cache.r4.16xlarge</code></p></li>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>M2 node types:</strong> <code>cache.m2.xlarge</code>,
<code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code></p>
<p><strong>R3 node types:</strong> <code>cache.r3.large</code>,
<code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>,
<code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code></p></li>
</ul></li>
</ul>
<p><strong>Additional node type info</strong></p>
<ul>
<li><p>All current generation instance types are created in Amazon VPC
by default.</p></li>
<li><p>Redis append-only files (AOF) are not supported for T1 or T2
instances.</p></li>
<li><p>Redis Multi-AZ with automatic failover is not supported on T1
instances.</p></li>
<li><p>Redis configuration variables <code>appendonly</code> and
<code>appendfsync</code> are not supported on Redis version 2.8.22 and
later.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_Duration">Duration</code></td>
<td><p>The duration filter value, specified in years or seconds. Use
this parameter to show only reservations for this duration.</p>
<p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_ProductDescription">ProductDescription</code></td>
<td><p>The product description filter value. Use this parameter to show
only those reservations matching the specified product
description.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_OfferingType">OfferingType</code></td>
<td><p>The offering type filter value. Use this parameter to show only
the available offerings matching the specified offering type.</p>
<p>Valid values:
<code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"|"All Upfront"|"Partial Upfront"| "No Upfront"</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_reserved_cache_nodes_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReservedCacheNodes = list(
        list(
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
    )

### Request syntax

    svc$describe_reserved_cache_nodes(
      ReservedCacheNodeId = "string",
      ReservedCacheNodesOfferingId = "string",
      CacheNodeType = "string",
      Duration = "string",
      ProductDescription = "string",
      OfferingType = "string",
      MaxRecords = 123,
      Marker = "string"
    )
