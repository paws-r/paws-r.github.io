<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_virtual_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the virtual private gateways owned by the Amazon Web Services account

### Description

Lists the virtual private gateways owned by the Amazon Web Services
account.

You can create one or more Direct Connect private virtual interfaces
linked to a virtual private gateway.

### Usage

    directconnect_describe_virtual_gateways()

### Value

A list with the following syntax:

    list(
      virtualGateways = list(
        list(
          virtualGatewayId = "string",
          virtualGatewayState = "string"
        )
      )
    )
