<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_broker_instance_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe available broker instance options

### Description

Describe available broker instance options.

### Usage

    mq_describe_broker_instance_options(EngineType, HostInstanceType,
      MaxResults, NextToken, StorageType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_describe_broker_instance_options_:_EngineType">EngineType</code></td>
<td><p>Filter response by engine type.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_describe_broker_instance_options_:_HostInstanceType">HostInstanceType</code></td>
<td><p>Filter response by host instance type.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_describe_broker_instance_options_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of brokers that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_describe_broker_instance_options_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results Amazon MQ
should return. To request the first page, leave nextToken
empty.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_describe_broker_instance_options_:_StorageType">StorageType</code></td>
<td><p>Filter response by storage type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerInstanceOptions = list(
        list(
          AvailabilityZones = list(
            list(
              Name = "string"
            )
          ),
          EngineType = "ACTIVEMQ"|"RABBITMQ",
          HostInstanceType = "string",
          StorageType = "EBS"|"EFS",
          SupportedDeploymentModes = list(
            "SINGLE_INSTANCE"|"ACTIVE_STANDBY_MULTI_AZ"|"CLUSTER_MULTI_AZ"
          ),
          SupportedEngineVersions = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Request syntax

    svc$describe_broker_instance_options(
      EngineType = "string",
      HostInstanceType = "string",
      MaxResults = 123,
      NextToken = "string",
      StorageType = "string"
    )
