<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_query_schema_version_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Queries for the schema version metadata information

### Description

Queries for the schema version metadata information.

### Usage

    glue_query_schema_version_metadata(SchemaId, SchemaVersionNumber,
      SchemaVersionId, MetadataList, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_query_schema_version_metadata_:_SchemaId">SchemaId</code></td>
<td><p>A wrapper structure that may contain the schema name and Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="glue_query_schema_version_metadata_:_SchemaVersionNumber">SchemaVersionNumber</code></td>
<td><p>The version number of the schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_query_schema_version_metadata_:_SchemaVersionId">SchemaVersionId</code></td>
<td><p>The unique version ID of the schema version.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_query_schema_version_metadata_:_MetadataList">MetadataList</code></td>
<td><p>Search key-value pairs for metadata, if they are not provided all
the metadata information will be fetched.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_query_schema_version_metadata_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_query_schema_version_metadata_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetadataInfoMap = list(
        list(
          MetadataValue = "string",
          CreatedTime = "string",
          OtherMetadataValueList = list(
            list(
              MetadataValue = "string",
              CreatedTime = "string"
            )
          )
        )
      ),
      SchemaVersionId = "string",
      NextToken = "string"
    )

### Request syntax

    svc$query_schema_version_metadata(
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
      MetadataList = list(
        list(
          MetadataKey = "string",
          MetadataValue = "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
