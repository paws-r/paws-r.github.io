<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_environment_outputs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the infrastructure as code outputs for your environment

### Description

List the infrastructure as code outputs for your environment.

### Usage

    proton_list_environment_outputs(environmentName, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_environment_outputs_:_environmentName">environmentName</code></td>
<td><p>[required] The environment name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_environment_outputs_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next environment
output in the array of environment outputs, after the list of
environment outputs that was previously requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      outputs = list(
        list(
          key = "string",
          valueString = "string"
        )
      )
    )

### Request syntax

    svc$list_environment_outputs(
      environmentName = "string",
      nextToken = "string"
    )
