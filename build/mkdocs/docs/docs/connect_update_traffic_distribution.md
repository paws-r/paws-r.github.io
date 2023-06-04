<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_traffic_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the traffic distribution for a given traffic distribution group

### Description

Updates the traffic distribution for a given traffic distribution group.

For more information about updating a traffic distribution group, see
[Update telephony traffic distribution across Amazon Web Services
Regions](https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_update_traffic_distribution(Id, TelephonyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_update_traffic_distribution_:_Id">Id</code></td>
<td><p>[required] The identifier of the traffic distribution group. This
can be the ID or the ARN if the API is being called in the Region where
the traffic distribution group was created. The ARN must be provided if
the call is from the replicated Region.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_traffic_distribution_:_TelephonyConfig">TelephonyConfig</code></td>
<td><p>The distribution of traffic between the instance and its
replica(s).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_traffic_distribution(
      Id = "string",
      TelephonyConfig = list(
        Distributions = list(
          list(
            Region = "string",
            Percentage = 123
          )
        )
      )
    )
