<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_put_schema_version_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts the metadata key value pair for a specified schema version ID

### Description

Puts the metadata key value pair for a specified schema version ID. A
maximum of 10 key value pairs will be allowed per schema version. They
can be added over one or more calls.

### Usage

    glue_put_schema_version_metadata(SchemaId, SchemaVersionNumber,
      SchemaVersionId, MetadataKeyValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_put_schema_version_metadata_:_SchemaId">SchemaId</code></td>
<td><p>The unique ID for the schema.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_schema_version_metadata_:_SchemaVersionNumber">SchemaVersionNumber</code></td>
<td><p>The version number of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_put_schema_version_metadata_:_SchemaVersionId">SchemaVersionId</code></td>
<td><p>The unique version ID of the schema version.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_schema_version_metadata_:_MetadataKeyValue">MetadataKeyValue</code></td>
<td><p>[required] The metadata key's corresponding value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArn = "string",
      SchemaName = "string",
      RegistryName = "string",
      LatestVersion = TRUE|FALSE,
      VersionNumber = 123,
      SchemaVersionId = "string",
      MetadataKey = "string",
      MetadataValue = "string"
    )

### Request syntax

    svc$put_schema_version_metadata(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      SchemaVersionNumber = list(
        LatestVersion = TRUE|FALSE,
        VersionNumber = 123
      ),
      SchemaVersionId = "string",
      MetadataKeyValue = list(
        MetadataKey = "string",
        MetadataValue = "string"
      )
    )
