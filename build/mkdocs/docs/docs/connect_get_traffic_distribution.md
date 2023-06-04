<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_traffic_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current traffic distribution for a given traffic distribution group

### Description

Retrieves the current traffic distribution for a given traffic
distribution group.

### Usage

    connect_get_traffic_distribution(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_get_traffic_distribution_:_Id">Id</code></td>
<td><p>[required] The identifier of the traffic distribution
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TelephonyConfig = list(
        Distributions = list(
          list(
            Region = "string",
            Percentage = 123
          )
        )
      ),
      Id = "string",
      Arn = "string"
    )

### Request syntax

    svc$get_traffic_distribution(
      Id = "string"
    )
