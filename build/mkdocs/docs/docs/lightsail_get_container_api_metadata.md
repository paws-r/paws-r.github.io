<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_api_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Amazon Lightsail containers, such as the current version of the Lightsail Control (lightsailctl) plugin

### Description

Returns information about Amazon Lightsail containers, such as the
current version of the Lightsail Control (lightsailctl) plugin.

### Usage

    lightsail_get_container_api_metadata()

### Value

A list with the following syntax:

    list(
      metadata = list(
        list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_container_api_metadata()
