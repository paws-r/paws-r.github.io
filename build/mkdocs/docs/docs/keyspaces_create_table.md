<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_create_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateTable operation adds a new table to the specified keyspace

### Description

The `create_table` operation adds a new table to the specified keyspace.
Within a keyspace, table names must be unique.

`create_table` is an asynchronous operation. When the request is
received, the status of the table is set to `CREATING`. You can monitor
the creation status of the new table by using the `get_table` operation,
which returns the current `status` of the table. You can start using a
table when the status is `ACTIVE`.

For more information, see [Creating
tables](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html#tables-create)
in the *Amazon Keyspaces Developer Guide*.

### Usage

    keyspaces_create_table(keyspaceName, tableName, schemaDefinition,
      comment, capacitySpecification, encryptionSpecification,
      pointInTimeRecovery, ttl, defaultTimeToLive, tags, clientSideTimestamps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_create_table_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace that the table is going to be
created in.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_create_table_:_tableName">tableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_create_table_:_schemaDefinition">schemaDefinition</code></td>
<td><p>[required] The <code>schemaDefinition</code> consists of the
following parameters.</p>
<p>For each column to be created:</p>
<ul>
<li><p><code>name</code> - The name of the column.</p></li>
<li><p><code>type</code> - An Amazon Keyspaces data type. For more
information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data
types</a> in the <em>Amazon Keyspaces Developer Guide</em>.</p></li>
</ul>
<p>The primary key of the table consists of the following columns:</p>
<ul>
<li><p><code>partitionKeys</code> - The partition key can be a single
column, or it can be a compound value composed of two or more columns.
The partition key portion of the primary key is required and determines
how Amazon Keyspaces stores your data.</p></li>
<li><p><code>name</code> - The name of each partition key
column.</p></li>
<li><p><code>clusteringKeys</code> - The optional clustering column
portion of your primary key determines how the data is clustered and
sorted within each partition.</p></li>
<li><p><code>name</code> - The name of the clustering column.</p></li>
<li><p><code>orderBy</code> - Sets the ascendant (<code>ASC</code>) or
descendant (<code>DESC</code>) order modifier.</p>
<p>To define a column as static use <code>staticColumns</code> - Static
columns store values that are shared by all rows in the same
partition:</p></li>
<li><p><code>name</code> - The name of the column.</p></li>
<li><p><code>type</code> - An Amazon Keyspaces data type.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="keyspaces_create_table_:_comment">comment</code></td>
<td><p>This parameter allows to enter a description of the
table.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_create_table_:_capacitySpecification">capacitySpecification</code></td>
<td><p>Specifies the read/write throughput capacity mode for the table.
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
<tr class="even">
<td><code
id="keyspaces_create_table_:_encryptionSpecification">encryptionSpecification</code></td>
<td><p>Specifies how the encryption key for encryption at rest is
managed for the table. You can choose one of the following KMS key (KMS
key):</p>
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
<tr class="odd">
<td><code
id="keyspaces_create_table_:_pointInTimeRecovery">pointInTimeRecovery</code></td>
<td><p>Specifies if <code>pointInTimeRecovery</code> is enabled or
disabled for the table. The options are:</p>
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
<tr class="even">
<td><code id="keyspaces_create_table_:_ttl">ttl</code></td>
<td><p>Enables Time to Live custom settings for the table. The options
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
<tr class="odd">
<td><code
id="keyspaces_create_table_:_defaultTimeToLive">defaultTimeToLive</code></td>
<td><p>The default Time to Live setting in seconds for the table.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting
the default TTL value for a table</a> in the <em>Amazon Keyspaces
Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_create_table_:_tags">tags</code></td>
<td><p>A list of key-value pair tags to be attached to the resource.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding
tags and labels to Amazon Keyspaces resources</a> in the <em>Amazon
Keyspaces Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_create_table_:_clientSideTimestamps">clientSideTimestamps</code></td>
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

    svc$create_table(
      keyspaceName = "string",
      tableName = "string",
      schemaDefinition = list(
        allColumns = list(
          list(
            name = "string",
            type = "string"
          )
        ),
        partitionKeys = list(
          list(
            name = "string"
          )
        ),
        clusteringKeys = list(
          list(
            name = "string",
            orderBy = "ASC"|"DESC"
          )
        ),
        staticColumns = list(
          list(
            name = "string"
          )
        )
      ),
      comment = list(
        message = "string"
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
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      clientSideTimestamps = list(
        status = "ENABLED"
      )
    )
