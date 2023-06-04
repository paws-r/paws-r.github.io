<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_radius</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory

### Description

Updates the Remote Authentication Dial In User Service (RADIUS) server
information for an AD Connector or Microsoft AD directory.

### Usage

    directoryservice_update_radius(DirectoryId, RadiusSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_radius_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to update
the RADIUS server information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_radius_:_RadiusSettings">RadiusSettings</code></td>
<td><p>[required] A RadiusSettings object that contains information
about the RADIUS server.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_radius(
      DirectoryId = "string",
      RadiusSettings = list(
        RadiusServers = list(
          "string"
        ),
        RadiusPort = 123,
        RadiusTimeout = 123,
        RadiusRetries = 123,
        SharedSecret = "string",
        AuthenticationProtocol = "PAP"|"CHAP"|"MS-CHAPv1"|"MS-CHAPv2",
        DisplayLabel = "string",
        UseSameUsername = TRUE|FALSE
      )
    )
