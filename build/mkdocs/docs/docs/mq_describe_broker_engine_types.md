<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_broker_engine_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe available engine types and versions

### Description

Describe available engine types and versions.

### Usage

    mq_describe_broker_engine_types(EngineType, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_describe_broker_engine_types_:_EngineType">EngineType</code></td>
<td><p>Filter response by engine type.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_describe_broker_engine_types_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of brokers that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_describe_broker_engine_types_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results Amazon MQ
should return. To request the first page, leave nextToken
empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerEngineTypes = list(
        list(
          EngineType = "ACTIVEMQ"|"RABBITMQ",
          EngineVersions = list(
            list(
              Name = "string"
            )
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Request syntax

    svc$describe_broker_engine_types(
      EngineType = "string",
      MaxResults = 123,
      NextToken = "string"
    )
