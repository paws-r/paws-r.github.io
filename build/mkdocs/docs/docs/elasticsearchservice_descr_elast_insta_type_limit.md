<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_elasticsearch_instance_type_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion

### Description

Describe Elasticsearch Limits for a given InstanceType and
ElasticsearchVersion. When modifying existing Domain, specify the
`DomainName` to know what Limits are supported for modifying.

### Usage

    elasticsearchservice_describe_elasticsearch_instance_type_limits(
      DomainName, InstanceType, ElasticsearchVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_elasticsearch_instance_type_limits_:_DomainName">DomainName</code></td>
<td><p>DomainName represents the name of the Domain that we are trying
to modify. This should be present only if we are querying for
Elasticsearch <code>Limits</code> for existing domain.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_elasticsearch_instance_type_limits_:_InstanceType">InstanceType</code></td>
<td><p>[required] The instance type for an Elasticsearch cluster for
which Elasticsearch <code>Limits</code> are needed.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_elasticsearch_instance_type_limits_:_ElasticsearchVersion">ElasticsearchVersion</code></td>
<td><p>[required] Version of Elasticsearch for which <code>Limits</code>
are needed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LimitsByRole = list(
        list(
          StorageTypes = list(
            list(
              StorageTypeName = "string",
              StorageSubTypeName = "string",
              StorageTypeLimits = list(
                list(
                  LimitName = "string",
                  LimitValues = list(
                    "string"
                  )
                )
              )
            )
          ),
          InstanceLimits = list(
            InstanceCountLimits = list(
              MinimumInstanceCount = 123,
              MaximumInstanceCount = 123
            )
          ),
          AdditionalLimits = list(
            list(
              LimitName = "string",
              LimitValues = list(
                "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_elasticsearch_instance_type_limits(
      DomainName = "string",
      InstanceType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
      ElasticsearchVersion = "string"
    )
