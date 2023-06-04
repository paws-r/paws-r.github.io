<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_list_schema_extensions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all schema extensions applied to a Microsoft AD Directory

### Description

Lists all schema extensions applied to a Microsoft AD Directory.

### Usage

    directoryservice_list_schema_extensions(DirectoryId, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_list_schema_extensions_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory from which to retrieve
the schema extension information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_list_schema_extensions_:_NextToken">NextToken</code></td>
<td><p>The <code>ListSchemaExtensions.NextToken</code> value from a
previous call to <code>list_schema_extensions</code>. Pass null if this
is the first call.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_list_schema_extensions_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaExtensionsInfo = list(
        list(
          DirectoryId = "string",
          SchemaExtensionId = "string",
          Description = "string",
          SchemaExtensionStatus = "Initializing"|"CreatingSnapshot"|"UpdatingSchema"|"Replicating"|"CancelInProgress"|"RollbackInProgress"|"Cancelled"|"Failed"|"Completed",
          SchemaExtensionStatusReason = "string",
          StartDateTime = as.POSIXct(
            "2015-01-01"
          ),
          EndDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_schema_extensions(
      DirectoryId = "string",
      NextToken = "string",
      Limit = 123
    )
