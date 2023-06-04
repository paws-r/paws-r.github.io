<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_sync_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Syncs the resource with current AppRegistry records

### Description

Syncs the resource with current AppRegistry records.

Specifically, the resource’s AppRegistry system tags sync with its
associated application. We remove the resource's AppRegistry system tags
if it does not associate with the application. The caller must have
permissions to read and update the resource.

### Usage

    appregistry_sync_resource(resourceType, resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_sync_resource_:_resourceType">resourceType</code></td>
<td><p>[required] The type of resource of which the application will be
associated.</p></td>
</tr>
<tr class="even">
<td><code id="appregistry_sync_resource_:_resource">resource</code></td>
<td><p>[required] An entity you can work with and specify with a name or
ID. Examples include an Amazon EC2 instance, an Amazon Web Services
CloudFormation stack, or an Amazon S3 bucket.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationArn = "string",
      resourceArn = "string",
      actionTaken = "START_SYNC"|"NO_ACTION"
    )

### Request syntax

    svc$sync_resource(
      resourceType = "CFN_STACK"|"RESOURCE_TAG_VALUE",
      resource = "string"
    )
