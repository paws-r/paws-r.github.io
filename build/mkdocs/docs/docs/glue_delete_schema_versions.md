<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_schema_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove versions from the specified schema

### Description

Remove versions from the specified schema. A version number or range may
be supplied. If the compatibility mode forbids deleting of a version
that is necessary, such as BACKWARDS\_FULL, an error is returned.
Calling the `GetSchemaVersions` API after this call will list the status
of the deleted versions.

When the range of version numbers contain check pointed version, the API
will return a 409 conflict and will not proceed with the deletion. You
have to remove the checkpoint first using the `DeleteSchemaCheckpoint`
API before using this API.

You cannot use the `delete_schema_versions` API to delete the first
schema version in the schema set. The first schema version can only be
deleted by the `delete_schema` API. This operation will also delete the
attached `SchemaVersionMetadata` under the schema versions. Hard deletes
will be enforced on the database.

If the compatibility mode forbids deleting of a version that is
necessary, such as BACKWARDS\_FULL, an error is returned.

### Usage

    glue_delete_schema_versions(SchemaId, Versions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_schema_versions_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure that may contain the
schema name and Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_schema_versions_:_Versions">Versions</code></td>
<td><p>[required] A version range may be supplied which may be of the
format:</p>
<ul>
<li><p>a single version number, 5</p></li>
<li><p>a range, 5-8 : deletes versions 5, 6, 7, 8</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaVersionErrors = list(
        list(
          VersionNumber = 123,
          ErrorDetails = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_schema_versions(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      Versions = "string"
    )
