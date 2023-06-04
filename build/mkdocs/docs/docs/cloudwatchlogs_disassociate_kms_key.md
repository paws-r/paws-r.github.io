<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_disassociate_kms_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the associated KMS key from the specified log group

### Description

Disassociates the associated KMS key from the specified log group.

After the KMS key is disassociated from the log group, CloudWatch Logs
stops encrypting newly ingested data for the log group. All previously
ingested data remains encrypted, and CloudWatch Logs requires
permissions for the KMS key whenever the encrypted data is requested.

Note that it can take up to 5 minutes for this operation to take effect.

### Usage

    cloudwatchlogs_disassociate_kms_key(logGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_disassociate_kms_key_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_kms_key(
      logGroupName = "string"
    )
