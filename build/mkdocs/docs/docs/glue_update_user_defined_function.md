<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_user_defined_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing function definition in the Data Catalog

### Description

Updates an existing function definition in the Data Catalog.

### Usage

    glue_update_user_defined_function(CatalogId, DatabaseName, FunctionName,
      FunctionInput)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_user_defined_function_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the function to be updated is
located. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_user_defined_function_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database where the function to
be updated is located.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_user_defined_function_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the function.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_user_defined_function_:_FunctionInput">FunctionInput</code></td>
<td><p>[required] A <code>FunctionInput</code> object that redefines the
function in the Data Catalog.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user_defined_function(
      CatalogId = "string",
      DatabaseName = "string",
      FunctionName = "string",
      FunctionInput = list(
        FunctionName = "string",
        ClassName = "string",
        OwnerName = "string",
        OwnerType = "USER"|"ROLE"|"GROUP",
        ResourceUris = list(
          list(
            ResourceType = "JAR"|"FILE"|"ARCHIVE",
            Uri = "string"
          )
        )
      )
    )
