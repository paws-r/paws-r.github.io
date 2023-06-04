<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_client_branding</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes customized client branding

### Description

Deletes customized client branding. Client branding allows you to
customize your WorkSpace's client login portal. You can tailor your
login portal company logo, the support email address, support link, link
to reset password, and a custom message for users trying to sign in.

After you delete your customized client branding, your login portal
reverts to the default client branding.

### Usage

    workspaces_delete_client_branding(ResourceId, Platforms)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_client_branding_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier of the WorkSpace for which
you want to delete client branding.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_delete_client_branding_:_Platforms">Platforms</code></td>
<td><p>[required] The device type for which you want to delete client
branding.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_client_branding(
      ResourceId = "string",
      Platforms = list(
        "DeviceTypeWindows"|"DeviceTypeOsx"|"DeviceTypeAndroid"|"DeviceTypeIos"|"DeviceTypeLinux"|"DeviceTypeWeb"
      )
    )
