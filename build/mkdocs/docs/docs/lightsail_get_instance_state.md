<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_instance_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the state of a specific instance

### Description

Returns the state of a specific instance. Works on one instance at a
time.

### Usage

    lightsail_get_instance_state(instanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_instance_state_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the instance to get state information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      state = list(
        code = 123,
        name = "string"
      )
    )

### Request syntax

    svc$get_instance_state(
      instanceName = "string"
    )
