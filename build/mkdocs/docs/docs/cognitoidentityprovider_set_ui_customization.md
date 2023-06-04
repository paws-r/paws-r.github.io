<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_set_ui_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the user interface (UI) customization information for a user pool's built-in app UI

### Description

Sets the user interface (UI) customization information for a user pool's
built-in app UI.

You can specify app UI customization settings for a single client (with
a specific `clientId`) or for all clients (by setting the `clientId` to
`ALL`). If you specify `ALL`, the default configuration is used for
every client that has no previously set UI customization. If you specify
UI customization settings for a particular client, it will no longer
return to the `ALL` configuration.

To use this API, your user pool must have a domain associated with it.
Otherwise, there is no place to host the app's pages, and the service
will throw an error.

### Usage

    cognitoidentityprovider_set_ui_customization(UserPoolId, ClientId, CSS,
      ImageFile)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_ui_customization_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_ui_customization_:_ClientId">ClientId</code></td>
<td><p>The client ID for the client app.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_ui_customization_:_CSS">CSS</code></td>
<td><p>The CSS values in the UI customization.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_ui_customization_:_ImageFile">ImageFile</code></td>
<td><p>The uploaded logo image for the UI customization.</p></td>
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

    svc$set_ui_customization(
      UserPoolId = "string",
      ClientId = "string",
      CSS = "string",
      ImageFile = raw
    )
