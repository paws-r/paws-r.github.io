<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_restore_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores the specified table to the specified point in time within the earliest\_restorable\_timestamp and the current time

### Description

Restores the specified table to the specified point in time within the
`earliest_restorable_timestamp` and the current time. For more
information about restore points, see [Time window for PITR continuous
backups](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window)
in the *Amazon Keyspaces Developer Guide*.

Any number of users can execute up to 4 concurrent restores (any type of
restore) in a given account.

When you restore using point in time recovery, Amazon Keyspaces restores
your source table's schema and data to the state based on the selected
timestamp `(day:hour:minute:second)` to a new table. The Time to Live
(TTL) settings are also restored to the state based on the selected
timestamp.

In addition to the table's schema, data, and TTL settings,
`restore_table` restores the capacity mode, encryption, and
point-in-time recovery settings from the source table. Unlike the
table's schema data and TTL settings, which are restored based on the
selected timestamp, these settings are always restored based on the
table's settings as of the current time or when the table was deleted.

You can also overwrite these settings during restore:

-   Read/write capacity mode

-   Provisioned throughput capacity settings

-   Point-in-time (PITR) settings

-   Tags

For more information, see [PITR restore
settings](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings)
in the *Amazon Keyspaces Developer Guide*.

Note that the following settings are not restored, and you must
configure them manually for the new table:

-   Automatic scaling policies (for tables that use provisioned capacity
    mode)

-   Identity and Access Management (IAM) policies

-   Amazon CloudWatch metrics and alarms

### Usage

    keyspaces_restore_table(sourceKeyspaceName, sourceTableName,
      targetKeyspaceName, targetTableName, restoreTimestamp,
      capacitySpecificationOverride, encryptionSpecificationOverride,
      pointInTimeRecoveryOverride, tagsOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_restore_table_:_sourceKeyspaceName">sourceKeyspaceName</code></td>
<td><p>[required] The keyspace name of the source table.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_restore_table_:_sourceTableName">sourceTableName</code></td>
<td><p>[required] The name of the source table.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_restore_table_:_targetKeyspaceName">targetKeyspaceName</code></td>
<td><p>[required] The name of the target keyspace.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_restore_table_:_targetTableName">targetTableName</code></td>
<td><p>[required] The name of the target table.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_restore_table_:_restoreTimestamp">restoreTimestamp</code></td>
<td><p>The restore timestamp in ISO 8601 format.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_restore_table_:_capacitySpecificationOverride">capacitySpecificationOverride</code></td>
<td><p>Specifies the read/write throughput capacity mode for the target
table. The options are:</p>
<ul>
<li><p><code>throughputMode:PAY_PER_REQUEST</code></p></li>
<li><p><code>throughputMode:PROVISIONED</code> - Provisioned capacity
mode requires <code>readCapacityUnits</code> and
<code>writeCapacityUnits</code> as input.</p></li>
</ul>
<p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write
capacity modes</a> in the <em>Amazon Keyspaces Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_restore_table_:_encryptionSpecificationOverride">encryptionSpecificationOverride</code></td>
<td><p>Specifies the encryption settings for the target table. You can
choose one of the following KMS key (KMS key):</p>
<ul>
<li><p><code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon
Keyspaces.</p></li>
<li><p><code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored
in your account and is created, owned, and managed by you. This option
requires the <code>kms_key_identifier</code> of the KMS key in Amazon
Resource Name (ARN) format as input.</p></li>
</ul>
<p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption
at rest</a> in the <em>Amazon Keyspaces Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_restore_table_:_pointInTimeRecoveryOverride">pointInTimeRecoveryOverride</code></td>
<td><p>Specifies the <code>pointInTimeRecovery</code> settings for the
target table. The options are:</p>
<ul>
<li><p><code>status=ENABLED</code></p></li>
<li><p><code>status=DISABLED</code></p></li>
</ul>
<p>If it's not specified, the default is
<code>status=DISABLED</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time
recovery</a> in the <em>Amazon Keyspaces Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_restore_table_:_tagsOverride">tagsOverride</code></td>
<td><p>A list of key-value pair tags to be attached to the restored
table.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding
tags and labels to Amazon Keyspaces resources</a> in the <em>Amazon
Keyspaces Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      restoredTableARN = "string"
    )

### Request syntax

    svc$restore_table(
      sourceKeyspaceName = "string",
      sourceTableName = "string",
      targetKeyspaceName = "string",
      targetTableName = "string",
      restoreTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      capacitySpecificationOverride = list(
        throughputMode = "PAY_PER_REQUEST"|"PROVISIONED",
        readCapacityUnits = 123,
        writeCapacityUnits = 123
      ),
      encryptionSpecificationOverride = list(
        type = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
        kmsKeyIdentifier = "string"
      ),
      pointInTimeRecoveryOverride = list(
        status = "ENABLED"|"DISABLED"
      ),
      tagsOverride = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
