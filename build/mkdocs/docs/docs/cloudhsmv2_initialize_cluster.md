<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_initialize_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate

### Description

Claims an AWS CloudHSM cluster by submitting the cluster certificate
issued by your issuing certificate authority (CA) and the CA's root
certificate. Before you can claim a cluster, you must sign the cluster's
certificate signing request (CSR) with your issuing CA. To get the
cluster's CSR, use `describe_clusters`.

### Usage

    cloudhsmv2_initialize_cluster(ClusterId, SignedCert, TrustAnchor)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_initialize_cluster_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier (ID) of the cluster that you are
claiming. To find the cluster ID, use
<code>describe_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_initialize_cluster_:_SignedCert">SignedCert</code></td>
<td><p>[required] The cluster certificate issued (signed) by your
issuing certificate authority (CA). The certificate must be in PEM
format and can contain a maximum of 5000 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudhsmv2_initialize_cluster_:_TrustAnchor">TrustAnchor</code></td>
<td><p>[required] The issuing certificate of the issuing certificate
authority (CA) that issued (signed) the cluster certificate. You must
use a self-signed certificate. The certificate used to sign the HSM CSR
must be directly available, and thus must be the root certificate. The
certificate must be in PEM format and can contain a maximum of 5000
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      State = "CREATE_IN_PROGRESS"|"UNINITIALIZED"|"INITIALIZE_IN_PROGRESS"|"INITIALIZED"|"ACTIVE"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DEGRADED",
      StateMessage = "string"
    )

### Request syntax

    svc$initialize_cluster(
      ClusterId = "string",
      SignedCert = "string",
      TrustAnchor = "string"
    )
