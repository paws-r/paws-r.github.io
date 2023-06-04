<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of schemas with minimal details

### Description

Returns a list of schemas with minimal details. Schemas in Deleting
status will not be included in the results. Empty results will be
returned if there are no schemas available.

When the `RegistryId` is not provided, all the schemas across registries
will be part of the API response.

### Usage

    glue_list_schemas(RegistryId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_schemas_:_RegistryId">RegistryId</code></td>
<td><p>A wrapper structure that may contain the registry name and Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_schemas_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_schemas_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Schemas = list(
        list(
          RegistryName = "string",
          SchemaName = "string",
          SchemaArn = "string",
          Description = "string",
          SchemaStatus = "AVAILABLE"|"PENDING"|"DELETING",
          CreatedTime = "string",
          UpdatedTime = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_schemas(
      RegistryId = list(
        RegistryName = "string",
        RegistryArn = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
