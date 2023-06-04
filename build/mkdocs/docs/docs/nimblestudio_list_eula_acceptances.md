<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_eula_acceptances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List EULA acceptances

### Description

List EULA acceptances.

### Usage

    nimblestudio_list_eula_acceptances(eulaIds, nextToken, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_eula_acceptances_:_eulaIds">eulaIds</code></td>
<td><p>The list of EULA IDs that have been previously accepted.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_eula_acceptances_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_eula_acceptances_:_studioId">studioId</code></td>
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_eula_acceptances(
      eulaIds = list(
        "string"
      ),
      nextToken = "string",
      studioId = "string"
    )
