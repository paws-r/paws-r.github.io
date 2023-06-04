<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_dedicated_ip</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address

### Description

Get information about a dedicated IP address, including the name of the
dedicated IP pool that it's associated with, as well information about
the automatic warm-up process for the address.

### Usage

    sesv2_get_dedicated_ip(Ip)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_get_dedicated_ip_:_Ip">Ip</code></td>
<td><p>[required] The IP address that you want to obtain more
information about. The value you specify has to be a dedicated IP
address that's assocaited with your Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DedicatedIp = list(
        Ip = "string",
        WarmupStatus = "IN_PROGRESS"|"DONE",
        WarmupPercentage = 123,
        PoolName = "string"
      )
    )

### Request syntax

    svc$get_dedicated_ip(
      Ip = "string"
    )
