<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_batch_associate_scram_secret</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates one or more Scram Secrets with an Amazon MSK cluster

### Description

Associates one or more Scram Secrets with an Amazon MSK cluster.

### Usage

    kafka_batch_associate_scram_secret(ClusterArn, SecretArnList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_batch_associate_scram_secret_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_batch_associate_scram_secret_:_SecretArnList">SecretArnList</code></td>
<td><p>[required] List of AWS Secrets Manager secret ARNs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      UnprocessedScramSecrets = list(
        list(
          ErrorCode = "string",
          ErrorMessage = "string",
          SecretArn = "string"
        )
      )
    )

### Request syntax

    svc$batch_associate_scram_secret(
      ClusterArn = "string",
      SecretArnList = list(
        "string"
      )
    )
