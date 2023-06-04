<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_eulas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List EULAs

### Description

List EULAs.

### Usage

    nimblestudio_list_eulas(eulaIds, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="nimblestudio_list_eulas_:_eulaIds">eulaIds</code></td>
<td><p>The list of EULA IDs that should be returned</p></td>
</tr>
<tr class="even">
<td><code id="nimblestudio_list_eulas_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eulas = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_eulas(
      eulaIds = list(
        "string"
      ),
      nextToken = "string"
    )
