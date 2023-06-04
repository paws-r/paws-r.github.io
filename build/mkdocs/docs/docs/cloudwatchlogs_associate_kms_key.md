<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_associate_kms_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified KMS key with the specified log group

### Description

Associates the specified KMS key with the specified log group.

Associating a KMS key with a log group overrides any existing
associations between the log group and a KMS key. After a KMS key is
associated with a log group, all newly ingested data for the log group
is encrypted using the KMS key. This association is stored as long as
the data encrypted with the KMS keyis still within CloudWatch Logs. This
enables CloudWatch Logs to decrypt this data whenever it is requested.

CloudWatch Logs supports only symmetric KMS keys. Do not use an
associate an asymmetric KMS key with your log group. For more
information, see [Using Symmetric and Asymmetric
Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).

It can take up to 5 minutes for this operation to take effect.

If you attempt to associate a KMS key with a log group but the KMS key
does not exist or the KMS key is disabled, you receive an
`InvalidParameterException` error.

### Usage

    cloudwatchlogs_associate_kms_key(logGroupName, kmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_associate_kms_key_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_associate_kms_key_:_kmsKeyId">kmsKeyId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the KMS key to use
when encrypting log data. This must be a symmetric KMS key. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arn-syntax-kms">Amazon
Resource Names</a> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
Symmetric and Asymmetric Keys</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_kms_key(
      logGroupName = "string",
      kmsKeyId = "string"
    )
