<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_service_powers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of powers that can be specified for your Amazon Lightsail container services

### Description

Returns the list of powers that can be specified for your Amazon
Lightsail container services.

The power specifies the amount of memory, the number of vCPUs, and the
base price of the container service.

### Usage

    lightsail_get_container_service_powers()

### Value

A list with the following syntax:

    list(
      powers = list(
        list(
          powerId = "string",
          price = 123.0,
          cpuCount = 123.0,
          ramSizeInGb = 123.0,
          name = "string",
          isActive = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$get_container_service_powers()
