<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_connectivity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the cluster's connectivity configuration

### Description

Updates the cluster's connectivity configuration.

### Usage

    kafka_update_connectivity(ClusterArn, ConnectivityInfo, CurrentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_connectivity_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_connectivity_:_ConnectivityInfo">ConnectivityInfo</code></td>
<td><p>[required] Information about the broker access
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_connectivity_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of the MSK cluster to update. Cluster
versions aren't simple numbers. You can describe an MSK cluster to find
its version. When this update operation is successful, it generates a
new cluster version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterOperationArn = "string"
    )

### Request syntax

    svc$update_connectivity(
      ClusterArn = "string",
      ConnectivityInfo = list(
        PublicAccess = list(
          Type = "string"
        ),
        VpcConnectivity = list(
          ClientAuthentication = list(
            Sasl = list(
              Scram = list(
                Enabled = TRUE|FALSE
              ),
              Iam = list(
                Enabled = TRUE|FALSE
              )
            ),
            Tls = list(
              Enabled = TRUE|FALSE
            )
          )
        )
      ),
      CurrentVersion = "string"
    )
