<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new schema set and registers the schema definition

### Description

Creates a new schema set and registers the schema definition. Returns an
error if the schema set already exists without actually registering the
version.

When the schema set is created, a version checkpoint will be set to the
first version. Compatibility mode "DISABLED" restricts any additional
schema versions from being added after the first schema version. For all
other compatibility modes, validation of compatibility settings will be
applied only from the second version onwards when the
`register_schema_version` API is used.

When this API is called without a `RegistryId`, this will create an
entry for a "default-registry" in the registry database tables, if it is
not already present.

### Usage

    glue_create_schema(RegistryId, SchemaName, DataFormat, Compatibility,
      Description, Tags, SchemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_schema_:_RegistryId">RegistryId</code></td>
<td><p>This is a wrapper shape to contain the registry identity fields.
If this is not provided, the default registry will be used. The ARN
format for the same will be: <code
style="white-space: pre;">⁠arn:aws:glue:us-east-2:&lt;customer id&gt;:registry/default-registry:random-5-letter-id⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_schema_:_SchemaName">SchemaName</code></td>
<td><p>[required] Name of the schema to be created of max length of 255,
and may only contain letters, numbers, hyphen, underscore, dollar sign,
or hash mark. No whitespace.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_schema_:_DataFormat">DataFormat</code></td>
<td><p>[required] The data format of the schema definition. Currently
<code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_schema_:_Compatibility">Compatibility</code></td>
<td><p>The compatibility mode of the schema. The possible values
are:</p>
<ul>
<li><p><em>NONE</em>: No compatibility mode applies. You can use this
choice in development scenarios or if you do not know the compatibility
mode that you want to apply to schemas. Any new version added will be
accepted without undergoing a compatibility check.</p></li>
<li><p><em>DISABLED</em>: This compatibility choice prevents versioning
for a particular schema. You can use this choice to prevent future
versioning of a schema.</p></li>
<li><p><em>BACKWARD</em>: This compatibility choice is recommended as it
allows data receivers to read both the current and one previous schema
version. This means that for instance, a new schema version cannot drop
data fields or change the type of these fields, so they can't be read by
readers using the previous version.</p></li>
<li><p><em>BACKWARD_ALL</em>: This compatibility choice allows data
receivers to read both the current and all previous schema versions. You
can use this choice when you need to delete fields or add optional
fields, and check compatibility against all previous schema
versions.</p></li>
<li><p><em>FORWARD</em>: This compatibility choice allows data receivers
to read both the current and one next schema version, but not
necessarily later versions. You can use this choice when you need to add
fields or delete optional fields, but only check compatibility against
the last schema version.</p></li>
<li><p><em>FORWARD_ALL</em>: This compatibility choice allows data
receivers to read written by producers of any new registered schema. You
can use this choice when you need to add fields or delete optional
fields, and check compatibility against all previous schema
versions.</p></li>
<li><p><em>FULL</em>: This compatibility choice allows data receivers to
read data written by producers using the previous or next version of the
schema, but not necessarily earlier or later versions. You can use this
choice when you need to add or remove optional fields, but only check
compatibility against the last schema version.</p></li>
<li><p><em>FULL_ALL</em>: This compatibility choice allows data
receivers to read data written by producers using all previous schema
versions. You can use this choice when you need to add or remove
optional fields, and check compatibility against all previous schema
versions.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="glue_create_schema_:_Description">Description</code></td>
<td><p>An optional description of the schema. If description is not
provided, there will not be any automatic default value for
this.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_schema_:_Tags">Tags</code></td>
<td><p>Amazon Web Services tags that contain a key value pair and may be
searched by console, command line, or API. If specified, follows the
Amazon Web Services tags-on-create pattern.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_schema_:_SchemaDefinition">SchemaDefinition</code></td>
<td><p>The schema definition using the <code>DataFormat</code> setting
for <code>SchemaName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistryName = "string",
      RegistryArn = "string",
      SchemaName = "string",
      SchemaArn = "string",
      Description = "string",
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      Compatibility = "NONE"|"DISABLED"|"BACKWARD"|"BACKWARD_ALL"|"FORWARD"|"FORWARD_ALL"|"FULL"|"FULL_ALL",
      SchemaCheckpoint = 123,
      LatestSchemaVersion = 123,
      NextSchemaVersion = 123,
      SchemaStatus = "AVAILABLE"|"PENDING"|"DELETING",
      Tags = list(
        "string"
      ),
      SchemaVersionId = "string",
      SchemaVersionStatus = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING"
    )

### Request syntax

    svc$create_schema(
      RegistryId = list(
        RegistryName = "string",
        RegistryArn = "string"
      ),
      SchemaName = "string",
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      Compatibility = "NONE"|"DISABLED"|"BACKWARD"|"BACKWARD_ALL"|"FORWARD"|"FORWARD_ALL"|"FULL"|"FULL_ALL",
      Description = "string",
      Tags = list(
        "string"
      ),
      SchemaDefinition = "string"
    )
