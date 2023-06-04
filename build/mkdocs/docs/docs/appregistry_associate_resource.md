<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_associate_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a resource with an application

### Description

Associates a resource with an application. The resource can be specified
by its ARN or name. The application can be specified by ARN, ID, or
name.

### Usage

    appregistry_associate_resource(application, resourceType, resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_associate_resource_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_associate_resource_:_resourceType">resourceType</code></td>
<td><p>[required] The type of resource of which the application will be
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_associate_resource_:_resource">resource</code></td>
<td><p>[required] The name or ID of the resource of which the
application will be associated.</p></td>
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

    svc$associate_resource(
      application = "string",
      resourceType = "CFN_STACK"|"RESOURCE_TAG_VALUE",
      resource = "string"
    )
