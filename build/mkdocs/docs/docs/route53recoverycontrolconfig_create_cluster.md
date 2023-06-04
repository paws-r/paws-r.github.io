<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new cluster

### Description

Create a new cluster. A cluster is a set of redundant Regional endpoints
against which you can run API calls to update or get the state of one or
more routing controls. Each cluster has a name, status, Amazon Resource
Name (ARN), and an array of the five cluster endpoints (one for each
supported Amazon Web Services Region) that you can use with API calls to
the cluster data plane.

### Usage

    route53recoverycontrolconfig_create_cluster(ClientToken, ClusterName,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_cluster_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive string of up to 64 ASCII characters. To
make an idempotent API request with an action, specify a client token in
the request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_cluster_:_Tags">Tags</code></td>
<td><p>The tags associated with the cluster.</p></td>
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

    svc$create_cluster(
      ClientToken = "string",
      ClusterName = "string",
      Tags = list(
        "string"
      )
    )
