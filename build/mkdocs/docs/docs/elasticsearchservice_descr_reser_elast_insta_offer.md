<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_reserved_elasticsearch_instance_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists available reserved Elasticsearch instance offerings

### Description

Lists available reserved Elasticsearch instance offerings.

### Usage

    elasticsearchservice_describe_reserved_elasticsearch_instance_offerings(
      ReservedElasticsearchInstanceOfferingId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_reserved_elasticsearch_instance_offerings_:_ReservedElasticsearchInstanceOfferingId">ReservedElasticsearchInstanceOfferingId</code></td>
<td><p>The offering identifier filter value. Use this parameter to show
only the available offering that matches the specified reservation
identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_reserved_elasticsearch_instance_offerings_:_MaxResults">MaxResults</code></td>
<td><p>Set this value to limit the number of results returned. If not
specified, defaults to 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_reserved_elasticsearch_instance_offerings_:_NextToken">NextToken</code></td>
<td><p>NextToken should be sent in case if earlier API call produced
result containing NextToken. It is used for pagination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ReservedElasticsearchInstanceOfferings = list(
        list(
          ReservedElasticsearchInstanceOfferingId = "string",
          ElasticsearchInstanceType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
          Duration = 123,
          FixedPrice = 123.0,
          UsagePrice = 123.0,
          CurrencyCode = "string",
          PaymentOption = "ALL_UPFRONT"|"PARTIAL_UPFRONT"|"NO_UPFRONT",
          RecurringCharges = list(
            list(
              RecurringChargeAmount = 123.0,
              RecurringChargeFrequency = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_reserved_elasticsearch_instance_offerings(
      ReservedElasticsearchInstanceOfferingId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
