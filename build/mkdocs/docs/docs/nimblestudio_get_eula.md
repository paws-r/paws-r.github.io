<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_eula</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get EULA

### Description

Get EULA.

### Usage

    nimblestudio_get_eula(eulaId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="nimblestudio_get_eula_:_eulaId">eulaId</code></td>
<td><p>[required] The EULA ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eula = list(
        content = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        eulaId = "string",
        name = "string",
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_eula(
      eulaId = "string"
    )
