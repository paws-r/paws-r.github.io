<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description, compatibility setting, or version checkpoint for a schema set

### Description

Updates the description, compatibility setting, or version checkpoint
for a schema set.

For updating the compatibility setting, the call will not validate
compatibility for the entire set of schema versions with the new
compatibility setting. If the value for `Compatibility` is provided, the
`VersionNumber` (a checkpoint) is also required. The API will validate
the checkpoint version number for consistency.

If the value for the `VersionNumber` (checkpoint) is provided,
`Compatibility` is optional and this can be used to set/reset a
checkpoint for the schema.

This update will happen only if the schema is in the AVAILABLE state.

### Usage

    glue_update_schema(SchemaId, SchemaVersionNumber, Compatibility,
      Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_schema_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure to contain schema identity
fields. The structure contains:</p>
<ul>
<li><p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
One of <code>SchemaArn</code> or <code>SchemaName</code> has to be
provided.</p></li>
<li><p>SchemaId$SchemaName: The name of the schema. One of
<code>SchemaArn</code> or <code>SchemaName</code> has to be
provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_update_schema_:_SchemaVersionNumber">SchemaVersionNumber</code></td>
<td><p>Version number required for check pointing. One of
<code>VersionNumber</code> or <code>Compatibility</code> has to be
provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_schema_:_Compatibility">Compatibility</code></td>
<td><p>The new compatibility setting for the schema.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_schema_:_Description">Description</code></td>
<td><p>The new description for the schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string",
      SchemaName = "string",
      RegistryName = "string"
    )

### Request syntax

    svc$update_schema(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      SchemaVersionNumber = list(
        LatestVersion = TRUE|FALSE,
        VersionNumber = 123
      ),
      Compatibility = "NONE"|"DISABLED"|"BACKWARD"|"BACKWARD_ALL"|"FORWARD"|"FORWARD_ALL"|"FULL"|"FULL_ALL",
      Description = "string"
    )
