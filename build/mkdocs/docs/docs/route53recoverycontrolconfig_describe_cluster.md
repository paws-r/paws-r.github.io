<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_describe_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Display the details about a cluster

### Description

Display the details about a cluster. The response includes the cluster
name, endpoints, status, and Amazon Resource Name (ARN).

### Usage

    route53recoverycontrolconfig_describe_cluster(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_describe_cluster_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        ClusterArn = "string",
        ClusterEndpoints = list(
          list(
            Endpoint = "string",
            Region = "string"
          )
        ),
        Name = "string",
        Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
      )
    )

### Request syntax

    svc$describe_cluster(
      ClusterArn = "string"
    )
