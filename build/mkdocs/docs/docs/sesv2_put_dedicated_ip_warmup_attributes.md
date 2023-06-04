<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_dedicated_ip_warmup_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Put dedicated ip warmup attributes

### Description

Put dedicated ip warmup attributes

### Usage

    sesv2_put_dedicated_ip_warmup_attributes(Ip, WarmupPercentage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_dedicated_ip_warmup_attributes_:_Ip">Ip</code></td>
<td><p>[required] The dedicated IP address that you want to update the
warm-up attributes for.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_dedicated_ip_warmup_attributes_:_WarmupPercentage">WarmupPercentage</code></td>
<td><p>[required] The warm-up percentage that you want to associate with
the dedicated IP address.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_dedicated_ip_warmup_attributes(
      Ip = "string",
      WarmupPercentage = 123
    )
