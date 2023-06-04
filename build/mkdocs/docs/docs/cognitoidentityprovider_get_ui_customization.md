<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_ui_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the user interface (UI) Customization information for a particular app client's app UI, if any such information exists for the client

### Description

Gets the user interface (UI) Customization information for a particular
app client's app UI, if any such information exists for the client. If
nothing is set for the particular client, but there is an existing pool
level customization (the app `clientId` is `ALL`), then that information
is returned. If nothing is present, then an empty shape is returned.

### Usage

    cognitoidentityprovider_get_ui_customization(UserPoolId, ClientId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_ui_customization_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_get_ui_customization_:_ClientId">ClientId</code></td>
<td><p>The client ID for the client app.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UICustomization = list(
        UserPoolId = "string",
        ClientId = "string",
        ImageUrl = "string",
        CSS = "string",
        CSSVersion = "string",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_ui_customization(
      UserPoolId = "string",
      ClientId = "string"
    )
