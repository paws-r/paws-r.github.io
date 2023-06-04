<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_get_cluster_session_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides temporary, HTTP basic credentials that are associated with a given runtime IAM role and used by a cluster with fine-grained access control activated

### Description

Provides temporary, HTTP basic credentials that are associated with a
given runtime IAM role and used by a cluster with fine-grained access
control activated. You can use these credentials to connect to cluster
endpoints that support username and password authentication.

### Usage

    emr_get_cluster_session_credentials(ClusterId, ExecutionRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_get_cluster_session_credentials_:_ClusterId">ClusterId</code></td>
<td><p>[required] The unique identifier of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_get_cluster_session_credentials_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the runtime role for
interactive workload submission on the cluster. The runtime role can be
a cross-account IAM role. The runtime role ARN is a combination of
account ID, role name, and role type using the following format:
<code>arn:partition:service:region:account:resource</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Credentials = list(
        UsernamePassword = list(
          Username = "string",
          Password = "string"
        )
      ),
      ExpiresAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_cluster_session_credentials(
      ClusterId = "string",
      ExecutionRoleArn = "string"
    )
