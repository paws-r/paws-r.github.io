<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_is_vpc_peered</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a Boolean value indicating whether your Lightsail VPC is peered

### Description

Returns a Boolean value indicating whether your Lightsail VPC is peered.

### Usage

    lightsail_is_vpc_peered()

### Value

A list with the following syntax:

    list(
      isPeered = TRUE|FALSE
    )

### Request syntax

    svc$is_vpc_peered()
