<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_security</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the security settings for the cluster

### Description

Updates the security settings for the cluster. You can use this
operation to specify encryption and authentication on existing clusters.

### Usage

    kafka_update_security(ClientAuthentication, ClusterArn, CurrentVersion,
      EncryptionInfo)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_security_:_ClientAuthentication">ClientAuthentication</code></td>
<td><p>Includes all client authentication related information.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_update_security_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_security_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of the MSK cluster to update. Cluster
versions aren't simple numbers. You can describe an MSK cluster to find
its version. When this update operation is successful, it generates a
new cluster version.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_security_:_EncryptionInfo">EncryptionInfo</code></td>
<td><p>Includes all encryption-related information.</p></td>
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

    svc$update_security(
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
          CertificateAuthorityArnList = list(
            "string"
          ),
          Enabled = TRUE|FALSE
        ),
        Unauthenticated = list(
          Enabled = TRUE|FALSE
        )
      ),
      ClusterArn = "string",
      CurrentVersion = "string",
      EncryptionInfo = list(
        EncryptionAtRest = list(
          DataVolumeKMSKeyId = "string"
        ),
        EncryptionInTransit = list(
          ClientBroker = "TLS"|"TLS_PLAINTEXT"|"PLAINTEXT",
          InCluster = TRUE|FALSE
        )
      )
    )
