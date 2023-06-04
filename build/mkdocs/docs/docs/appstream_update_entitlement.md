<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_update_entitlement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified entitlement

### Description

Updates the specified entitlement.

### Usage

    appstream_update_entitlement(Name, StackName, Description,
      AppVisibility, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_update_entitlement_:_Name">Name</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_entitlement_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_entitlement_:_Description">Description</code></td>
<td><p>The description of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_entitlement_:_AppVisibility">AppVisibility</code></td>
<td><p>Specifies whether all or only selected apps are
entitled.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_entitlement_:_Attributes">Attributes</code></td>
<td><p>The attributes of the entitlement.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entitlement = list(
        Name = "string",
        StackName = "string",
        Description = "string",
        AppVisibility = "ALL"|"ASSOCIATED",
        Attributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$update_entitlement(
      Name = "string",
      StackName = "string",
      Description = "string",
      AppVisibility = "ALL"|"ASSOCIATED",
      Attributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
