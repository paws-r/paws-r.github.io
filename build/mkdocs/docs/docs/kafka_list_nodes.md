<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_list_nodes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the broker nodes in the cluster

### Description

Returns a list of the broker nodes in the cluster.

### Usage

    kafka_list_nodes(ClusterArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_list_nodes_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_list_nodes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response. If there
are more results, the response includes a NextToken parameter.</p></td>
</tr>
<tr class="odd">
<td><code id="kafka_list_nodes_:_NextToken">NextToken</code></td>
<td><p>The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NodeInfoList = list(
        list(
          AddedToClusterTime = "string",
          BrokerNodeInfo = list(
            AttachedENIId = "string",
            BrokerId = 123.0,
            ClientSubnet = "string",
            ClientVpcIpAddress = "string",
            CurrentBrokerSoftwareInfo = list(
              ConfigurationArn = "string",
              ConfigurationRevision = 123,
              KafkaVersion = "string"
            ),
            Endpoints = list(
              "string"
            )
          ),
          InstanceType = "string",
          NodeARN = "string",
          NodeType = "BROKER",
          ZookeeperNodeInfo = list(
            AttachedENIId = "string",
            ClientVpcIpAddress = "string",
            Endpoints = list(
              "string"
            ),
            ZookeeperId = 123.0,
            ZookeeperVersion = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_nodes(
      ClusterArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
