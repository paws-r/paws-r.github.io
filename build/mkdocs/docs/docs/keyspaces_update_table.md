<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_update_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds new columns to the table or updates one of the table's settings, for example capacity mode, encryption, point-in-time recovery, or ttl settings

### Description

Adds new columns to the table or updates one of the table's settings,
for example capacity mode, encryption, point-in-time recovery, or ttl
settings. Note that you can only update one specific table setting per
update operation.

### Usage

    keyspaces_update_table(keyspaceName, tableName, addColumns,
      capacitySpecification, encryptionSpecification, pointInTimeRecovery,
      ttl, defaultTimeToLive, clientSideTimestamps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_update_table_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace the specified table is stored
in.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_update_table_:_tableName">tableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_update_table_:_addColumns">addColumns</code></td>
<td><p>For each column to be added to the specified table:</p>
<ul>
<li><p><code>name</code> - The name of the column.</p></li>
<li><p><code>type</code> - An Amazon Keyspaces data type. For more
information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data
types</a> in the <em>Amazon Keyspaces Developer Guide</em>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_update_table_:_capacitySpecification">capacitySpecification</code></td>
<td><p>Modifies the read/write throughput capacity mode for the table.
The options are:</p>
<ul>
<li><p><code>throughputMode:PAY_PER_REQUEST</code> and</p></li>
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
id="keyspaces_update_table_:_encryptionSpecification">encryptionSpecification</code></td>
<td><p>Modifies the encryption settings of the table. You can choose one
of the following KMS key (KMS key):</p>
<ul>
<li><p><code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon
Keyspaces.</p></li>
<li><p><code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored
in your account and is created, owned, and managed by you. This option
requires the <code>kms_key_identifier</code> of the KMS key in Amazon
Resource Name (ARN) format as input.</p></li>
</ul>
<p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption
at rest</a> in the <em>Amazon Keyspaces Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_update_table_:_pointInTimeRecovery">pointInTimeRecovery</code></td>
<td><p>Modifies the <code>pointInTimeRecovery</code> settings of the
table. The options are:</p>
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
<td><code id="keyspaces_update_table_:_ttl">ttl</code></td>
<td><p>Modifies Time to Live custom settings for the table. The options
are:</p>
<ul>
<li><p><code>status:enabled</code></p></li>
<li><p><code>status:disabled</code></p></li>
</ul>
<p>The default is <code>status:disabled</code>. After <code>ttl</code>
is enabled, you can't disable it for the table.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring
data by using Amazon Keyspaces Time to Live (TTL)</a> in the <em>Amazon
Keyspaces Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_update_table_:_defaultTimeToLive">defaultTimeToLive</code></td>
<td><p>The default Time to Live setting in seconds for the table.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting
the default TTL value for a table</a> in the <em>Amazon Keyspaces
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_update_table_:_clientSideTimestamps">clientSideTimestamps</code></td>
<td><p>Enables client-side timestamps for the table. By default, the
setting is disabled. You can enable client-side timestamps with the
following option:</p>
<ul>
<li><p><code>status: "enabled"</code></p></li>
</ul>
<p>Once client-side timestamps are enabled for a table, this setting
cannot be disabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string"
    )

### Request syntax

    svc$update_table(
      keyspaceName = "string",
      tableName = "string",
      addColumns = list(
        list(
          name = "string",
          type = "string"
        )
      ),
      capacitySpecification = list(
        throughputMode = "PAY_PER_REQUEST"|"PROVISIONED",
        readCapacityUnits = 123,
        writeCapacityUnits = 123
      ),
      encryptionSpecification = list(
        type = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
        kmsKeyIdentifier = "string"
      ),
      pointInTimeRecovery = list(
        status = "ENABLED"|"DISABLED"
      ),
      ttl = list(
        status = "ENABLED"
      ),
      defaultTimeToLive = 123,
      clientSideTimestamps = list(
        status = "ENABLED"
      )
    )
