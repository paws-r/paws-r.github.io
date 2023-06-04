<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_accept_eulas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accept EULAs

### Description

Accept EULAs.

### Usage

    nimblestudio_accept_eulas(clientToken, eulaIds, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_accept_eulas_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code id="nimblestudio_accept_eulas_:_eulaIds">eulaIds</code></td>
<td><p>The EULA ID.</p></td>
</tr>
<tr class="odd">
<td><code id="nimblestudio_accept_eulas_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eulaAcceptances = list(
        list(
          acceptedAt = as.POSIXct(
            "2015-01-01"
          ),
          acceptedBy = "string",
          accepteeId = "string",
          eulaAcceptanceId = "string",
          eulaId = "string"
        )
      )
    )

### Request syntax

    svc$accept_eulas(
      clientToken = "string",
      eulaIds = list(
        "string"
      ),
      studioId = "string"
    )
