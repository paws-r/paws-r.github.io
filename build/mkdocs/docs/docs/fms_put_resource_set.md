<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_put_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the resource set

### Description

Creates the resource set.

An Firewall Manager resource set defines the resources to import into an
Firewall Manager policy from another Amazon Web Services service.

### Usage

    fms_put_resource_set(ResourceSet, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_put_resource_set_:_ResourceSet">ResourceSet</code></td>
<td><p>[required] Details about the resource set to be created or
updated.\&gt;</p></td>
</tr>
<tr class="even">
<td><code id="fms_put_resource_set_:_TagList">TagList</code></td>
<td><p>Retrieves the tags associated with the specified resource set.
Tags are key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource, up
to 50 tags for a resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceSet = list(
        Id = "string",
        Name = "string",
        Description = "string",
        UpdateToken = "string",
        ResourceTypeList = list(
          "string"
        ),
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        ResourceSetStatus = "ACTIVE"|"OUT_OF_ADMIN_SCOPE"
      ),
      ResourceSetArn = "string"
    )

### Request syntax

    svc$put_resource_set(
      ResourceSet = list(
        Id = "string",
        Name = "string",
        Description = "string",
        UpdateToken = "string",
        ResourceTypeList = list(
          "string"
        ),
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        ResourceSetStatus = "ACTIVE"|"OUT_OF_ADMIN_SCOPE"
      ),
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
