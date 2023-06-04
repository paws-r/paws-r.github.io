<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_schema_versions_diff</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Fetches the schema version difference in the specified difference type between two stored schema versions in the Schema Registry

### Description

Fetches the schema version difference in the specified difference type
between two stored schema versions in the Schema Registry.

This API allows you to compare two schema versions between two schema
definitions under the same schema.

### Usage

    glue_get_schema_versions_diff(SchemaId, FirstSchemaVersionNumber,
      SecondSchemaVersionNumber, SchemaDiffType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_schema_versions_diff_:_SchemaId">SchemaId</code></td>
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
id="glue_get_schema_versions_diff_:_FirstSchemaVersionNumber">FirstSchemaVersionNumber</code></td>
<td><p>[required] The first of the two schema versions to be
compared.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_schema_versions_diff_:_SecondSchemaVersionNumber">SecondSchemaVersionNumber</code></td>
<td><p>[required] The second of the two schema versions to be
compared.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_schema_versions_diff_:_SchemaDiffType">SchemaDiffType</code></td>
<td><p>[required] Refers to <code>SYNTAX_DIFF</code>, which is the
currently supported diff type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Diff = "string"
    )

### Request syntax

    svc$get_schema_versions_diff(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      FirstSchemaVersionNumber = list(
        LatestVersion = TRUE|FALSE,
        VersionNumber = 123
      ),
      SecondSchemaVersionNumber = list(
        LatestVersion = TRUE|FALSE,
        VersionNumber = 123
      ),
      SchemaDiffType = "SYNTAX_DIFF"
    )
