<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_set_local_console_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the password for your VM local console

### Description

Sets the password for your VM local console. When you log in to the
local console for the first time, you log in to the VM with the default
credentials. We recommend that you set a new password. You don't need to
know the default password to set a new password.

### Usage

    storagegateway_set_local_console_password(GatewayARN,
      LocalConsolePassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_set_local_console_password_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_set_local_console_password_:_LocalConsolePassword">LocalConsolePassword</code></td>
<td><p>[required] The password you want to set for your VM local
console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$set_local_console_password(
      GatewayARN = "string",
      LocalConsolePassword = "string"
    )

### Examples

    ## Not run: 
    # Sets the password for your VM local console.
    svc$set_local_console_password(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      LocalConsolePassword = "PassWordMustBeAtLeast6Chars."
    )

    ## End(Not run)
