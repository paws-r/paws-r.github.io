<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_disable_radius</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory

### Description

Disables multi-factor authentication (MFA) with the Remote
Authentication Dial In User Service (RADIUS) server for an AD Connector
or Microsoft AD directory.

### Usage

    directoryservice_disable_radius(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_disable_radius_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to disable
MFA.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_radius(
      DirectoryId = "string"
    )
