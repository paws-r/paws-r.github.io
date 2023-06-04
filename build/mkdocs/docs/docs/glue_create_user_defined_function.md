<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_user_defined_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new function definition in the Data Catalog

### Description

Creates a new function definition in the Data Catalog.

### Usage

    glue_create_user_defined_function(CatalogId, DatabaseName,
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
id="glue_create_user_defined_function_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which to create the function. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_user_defined_function_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which to create
the function.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_user_defined_function_:_FunctionInput">FunctionInput</code></td>
<td><p>[required] A <code>FunctionInput</code> object that defines the
function to create in the Data Catalog.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_user_defined_function(
      CatalogId = "string",
      DatabaseName = "string",
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
