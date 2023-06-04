<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_purchase_reserved_elasticsearch_instance_offering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to purchase reserved Elasticsearch instances

### Description

Allows you to purchase reserved Elasticsearch instances.

### Usage

    elasticsearchservice_purchase_reserved_elasticsearch_instance_offering(
      ReservedElasticsearchInstanceOfferingId, ReservationName, InstanceCount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_purchase_reserved_elasticsearch_instance_offering_:_ReservedElasticsearchInstanceOfferingId">ReservedElasticsearchInstanceOfferingId</code></td>
<td><p>[required] The ID of the reserved Elasticsearch instance offering
to purchase.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_purchase_reserved_elasticsearch_instance_offering_:_ReservationName">ReservationName</code></td>
<td><p>[required] A customer-specified identifier to track this
reservation.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_purchase_reserved_elasticsearch_instance_offering_:_InstanceCount">InstanceCount</code></td>
<td><p>The number of Elasticsearch instances to reserve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedElasticsearchInstanceId = "string",
      ReservationName = "string"
    )

### Request syntax

    svc$purchase_reserved_elasticsearch_instance_offering(
      ReservedElasticsearchInstanceOfferingId = "string",
      ReservationName = "string",
      InstanceCount = 123
    )
