<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_disassociate_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a resource from application

### Description

Disassociates a resource from application. Both the resource and the
application can be specified either by ID or name.

### Usage

    appregistry_disassociate_resource(application, resourceType, resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_disassociate_resource_:_application">application</code></td>
<td><p>[required] The name or ID of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_disassociate_resource_:_resourceType">resourceType</code></td>
<td><p>[required] The type of the resource that is being
disassociated.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_disassociate_resource_:_resource">resource</code></td>
<td><p>[required] The name or ID of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationArn = "string",
      resourceArn = "string"
    )

### Request syntax

    svc$disassociate_resource(
      application = "string",
      resourceType = "CFN_STACK"|"RESOURCE_TAG_VALUE",
      resource = "string"
    )
