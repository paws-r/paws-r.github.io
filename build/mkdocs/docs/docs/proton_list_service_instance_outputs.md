<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_service_instance_outputs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a list service of instance Infrastructure as Code (IaC) outputs

### Description

Get a list service of instance Infrastructure as Code (IaC) outputs.

### Usage

    proton_list_service_instance_outputs(nextToken, serviceInstanceName,
      serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_service_instance_outputs_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next output in the
array of outputs, after the list of outputs that was previously
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_instance_outputs_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>[required] The name of the service instance whose outputs you
want.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_service_instance_outputs_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that
<code>serviceInstanceName</code> is associated to.</p></td>
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

    svc$list_service_instance_outputs(
      nextToken = "string",
      serviceInstanceName = "string",
      serviceName = "string"
    )
