<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_environment_provisioned_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the provisioned resources for your environment

### Description

List the provisioned resources for your environment.

### Usage

    proton_list_environment_provisioned_resources(environmentName,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_environment_provisioned_resources_:_environmentName">environmentName</code></td>
<td><p>[required] The environment name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_environment_provisioned_resources_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next environment
provisioned resource in the array of environment provisioned resources,
after the list of environment provisioned resources that was previously
requested.</p></td>
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

    svc$list_environment_provisioned_resources(
      environmentName = "string",
      nextToken = "string"
    )
