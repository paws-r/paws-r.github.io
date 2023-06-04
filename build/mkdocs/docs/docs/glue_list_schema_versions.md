<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_schema_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of schema versions that you have created, with minimal information

### Description

Returns a list of schema versions that you have created, with minimal
information. Schema versions in Deleted status will not be included in
the results. Empty results will be returned if there are no schema
versions available.

### Usage

    glue_list_schema_versions(SchemaId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_schema_versions_:_SchemaId">SchemaId</code></td>
<td><p>[required] This is a wrapper structure to contain schema identity
fields. The structure contains:</p>
<ul>
<li><p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
Either <code>SchemaArn</code> or <code>SchemaName</code> and
<code>RegistryName</code> has to be provided.</p></li>
<li><p>SchemaId$SchemaName: The name of the schema. Either
<code>SchemaArn</code> or <code>SchemaName</code> and
<code>RegistryName</code> has to be provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_list_schema_versions_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_list_schema_versions_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Schemas = list(
        list(
          SchemaArn = "string",
          SchemaVersionId = "string",
          VersionNumber = 123,
          Status = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING",
          CreatedTime = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_schema_versions(
      SchemaId = list(
        SchemaArn = "string",
        SchemaName = "string",
        RegistryName = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
