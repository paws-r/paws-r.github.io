<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_service_instance_provisioned_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List provisioned resources for a service instance with details

### Description

List provisioned resources for a service instance with details.

### Usage

    proton_list_service_instance_provisioned_resources(nextToken,
      serviceInstanceName, serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_service_instance_provisioned_resources_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next provisioned
resource in the array of provisioned resources, after the list of
provisioned resources that was previously requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_instance_provisioned_resources_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>[required] The name of the service instance whose provisioned
resources you want.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_service_instance_provisioned_resources_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that
<code>serviceInstanceName</code> is associated to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      provisionedResources = list(
        list(
          identifier = "string",
          name = "string",
          provisioningEngine = "CLOUDFORMATION"|"TERRAFORM"
        )
      )
    )

### Request syntax

    svc$list_service_instance_provisioned_resources(
      nextToken = "string",
      serviceInstanceName = "string",
      serviceName = "string"
    )
