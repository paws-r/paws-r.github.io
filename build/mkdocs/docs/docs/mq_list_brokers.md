<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_list_brokers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all brokers

### Description

Returns a list of all brokers.

### Usage

    mq_list_brokers(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_list_brokers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of brokers that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.</p></td>
</tr>
<tr class="even">
<td><code id="mq_list_brokers_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results Amazon MQ
should return. To request the first page, leave nextToken
empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerSummaries = list(
        list(
          BrokerArn = "string",
          BrokerId = "string",
          BrokerName = "string",
          BrokerState = "CREATION_IN_PROGRESS"|"CREATION_FAILED"|"DELETION_IN_PROGRESS"|"RUNNING"|"REBOOT_IN_PROGRESS"|"CRITICAL_ACTION_REQUIRED",
          Created = as.POSIXct(
            "2015-01-01"
          ),
          DeploymentMode = "SINGLE_INSTANCE"|"ACTIVE_STANDBY_MULTI_AZ"|"CLUSTER_MULTI_AZ",
          EngineType = "ACTIVEMQ"|"RABBITMQ",
          HostInstanceType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_brokers(
      MaxResults = 123,
      NextToken = "string"
    )
