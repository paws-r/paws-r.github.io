<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_entitlement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new entitlement

### Description

Creates a new entitlement. Entitlements control access to specific
applications within a stack, based on user attributes. Entitlements
apply to SAML 2.0 federated user identities. Amazon AppStream 2.0 user
pool and streaming URL users are entitled to all applications in a
stack. Entitlements don't apply to the desktop stream view application,
or to applications managed by a dynamic app provider using the Dynamic
Application Framework.

### Usage

    appstream_create_entitlement(Name, StackName, Description,
      AppVisibility, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_entitlement_:_Name">Name</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_entitlement_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_entitlement_:_Description">Description</code></td>
<td><p>The description of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_entitlement_:_AppVisibility">AppVisibility</code></td>
<td><p>[required] Specifies whether all or selected apps are
entitled.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_entitlement_:_Attributes">Attributes</code></td>
<td><p>[required] The attributes of the entitlement.</p></td>
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

    svc$create_entitlement(
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
